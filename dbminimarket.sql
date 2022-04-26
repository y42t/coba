-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2016 at 04:48 AM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbminimarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telp` varchar(12) NOT NULL,
  `level` varchar(10) NOT NULL,
  `blokir` varchar(2) NOT NULL,
  `id_session` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama_lengkap`, `email`, `telp`, `level`, `blokir`, `id_session`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'administrator@gmail.com', '081267771344', 'Admin', 'N', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `costumer`
--

CREATE TABLE `costumer` (
  `id_costumer` int(5) NOT NULL,
  `nama_costumer` varchar(30) NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `alamat_lengkap` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `costumer`
--

INSERT INTO `costumer` (`id_costumer`, `nama_costumer`, `no_telpon`, `alamat_lengkap`) VALUES
(7, 'Utari', '089610889464', 'Natar, Lampung Selatan'),
(6, 'Ummi Elviani Gumai', '087899113864', 'Branti, Natar'),
(3, 'Udin Sedunia', '081267771355', 'Ulak Karang, Padang, Sumatera Barat'),
(4, 'Anike Soumokill', '0894355763', 'Pagar Alam, Bandar Lampung'),
(5, 'Qurota Anggun Nikmah', '085768194950', 'Poncowarno,Pringsewu'),
(8, 'Puput Indrayani', '085841354077', 'Rajabasa Permai, Bandar Lampung'),
(9, 'Susilowati', '085783333873', 'Banyuwangi,Jawa Tengah'),
(10, 'Yuli Ariyani', '085768497262', 'Rajabasa Permai, Bandar Lampung'),
(11, 'Windia Bagus', '085736453858', 'Bandar Jaya'),
(13, 'Septa Latif', '09878653643', 'Rajabasa Permai, Bandar Lampung'),
(14, 'Dian Fajar', '08767343483', 'Kampung Baru, Unila'),
(15, 'Dean Satya P', '08966576385', 'Bandar Lampung'),
(16, 'Redho Algifaro', '08795436438', 'Rajabasa Permai, Bandar Lampung'),
(17, 'Siti Fatimah', '085767437922', 'Kali Rejo, Pringsewu'),
(18, 'Pita Sari', '085356388392', 'Palembang'),
(19, 'Thiana Indar Putri', '08973536463', 'Desa Mekar, Kota Bumi'),
(20, 'M. FAHMI HAFIDZ', '089691561660', 'TABEK INDAH, NATAR');

-- --------------------------------------------------------

--
-- Table structure for table `faktur`
--

CREATE TABLE `faktur` (
  `id_faktur` int(5) NOT NULL,
  `no_faktur` varchar(20) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faktur`
--

INSERT INTO `faktur` (`id_faktur`, `no_faktur`, `tanggal`) VALUES
(1, 'FA1234', '2015-04-13 00:00:00'),
(2, 'FA0035', '2015-04-14 00:00:00'),
(3, 'FA8967', '2015-04-15 07:07:22');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kategori_produk`
--

INSERT INTO `kategori_produk` (`id_kategori`, `nama_kategori`) VALUES
(19, 'Penerangan'),
(18, 'Media'),
(20, 'Perabot'),
(21, 'Rumah tangga'),
(23, 'Bumbu Dapur');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id_orders` int(5) NOT NULL,
  `no_orders` varchar(12) COLLATE latin1_general_ci NOT NULL,
  `id_costumer` int(5) NOT NULL,
  `nama_kasir` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_order` date NOT NULL,
  `jam_order` time NOT NULL,
  `bayar` int(10) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_orders`, `no_orders`, `id_costumer`, `nama_kasir`, `tgl_order`, `jam_order`, `bayar`, `status`) VALUES
(1, 'S160112-0001', 11, 'Robby Prihandaya', '2016-01-12', '07:47:30', 100000, 1),
(2, 'S160112-0002', 6, 'Robby Prihandaya', '2016-01-12', '08:58:26', 100000, 1),
(3, 'S160112-0003', 11, 'Robby Prihandaya', '2016-01-12', '09:31:49', 10000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id_orders` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `jumlah` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`id_orders`, `id_produk`, `jumlah`) VALUES
(1, 95, 2),
(1, 94, 1),
(2, 95, 1),
(2, 92, 1),
(3, 97, 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders_temp`
--

CREATE TABLE `orders_temp` (
  `id_orders_temp` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `jumlah` int(5) NOT NULL,
  `tgl_order_temp` date NOT NULL,
  `jam_order_temp` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(5) NOT NULL,
  `kode_produk` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `nama_produk` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `deskripsi` text COLLATE latin1_general_ci NOT NULL,
  `harga` int(20) NOT NULL,
  `harga_grosir` int(20) NOT NULL,
  `harga_pokok` int(20) NOT NULL,
  `satuan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `berat` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `diskon` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tgl_masuk` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `kode_produk`, `id_kategori`, `nama_produk`, `deskripsi`, `harga`, `harga_grosir`, `harga_pokok`, `satuan`, `berat`, `diskon`, `tgl_masuk`) VALUES
(82, 'PRD009', 18, 'PS 2', '', 15000, 14800, 14000, 'kotak', '0', '0', '2014-05-25'),
(83, 'PRD013', 19, 'senter police', '', 20000, 19000, 15000, 'kotak', '0', '0', '2014-05-25'),
(84, 'PRD008', 18, 'Camera Digital Sony 16.1', '', 13000, 12000, 10000, 'kotak', '0', '0', '2014-05-25'),
(85, 'PRD012', 21, 'Sterika Philips Classic', '', 25000, 22000, 20000, 'kotak', '0', '0', '2014-05-25'),
(86, 'PRD006', 21, 'Sterika Philips Light Care', '', 29000, 28000, 25000, 'kotak', '0', '0', '2014-05-25'),
(87, 'PRD001', 18, 'Speaker Aktif Roadstone', '', 20000, 19000, 12000, 'kotak', '0', '0', '2014-05-25'),
(88, 'PRD007', 18, 'dvd player', '', 17000, 16000, 10000, 'kotak', '0', '0', '2014-05-25'),
(89, 'PRD014', 21, 'Blender philips Plastik', 'kuat dan tahan banting , anti pecah, mampu menghancurkan es batu menjadi kepingan kecil. dll', 20000, 19000, 15000, 'kotak', '0', '0', '2014-05-25'),
(90, 'PRD002', 18, 'Canon EOS_3iSk5_54', '20megapixel\r\nzoom sampai 40x\r\npakai flash', 45000, 44000, 40000, 'kotak', '0', '0', '2014-05-25'),
(91, 'PRD005', 20, 'Pompa air panasonic', 'daya tekanan kuat', 35000, 34000, 30000, 'kotak', '0', '0', '2014-05-25'),
(92, 'PRD003', 19, 'lampu sorot philips tempo', 'jarak sorot sampai 20m\r\ncahaya putih dan terang\r\n200watt', 50000, 49000, 40000, 'kotak', '0', '0', '2014-05-25'),
(93, 'PRD004', 18, 'Radio karcher', '', 25000, 23000, 15000, 'kotak', '0', '0', '2014-05-25'),
(94, 'PRD011', 21, 'Magic com rice cooker cosmos ', 'kapasitar 3liter beras\r\nbisa buat kukus \r\npenanak dan pemanas', 25000, 22000, 20000, 'Buah', '0', '0', '2014-05-25'),
(95, 'PRD010', 21, 'mesin-cuci-SHARP ES-T96CA', 'bisa menampung 8kg pakaian kotor\r\nada pengering', 20000, 15000, 10000, 'Kotak', '0', '0', '2014-05-25'),
(96, 'PRD015', 21, 'sabun Sinzui', 'sabun mantapp,..', 5000, 4800, 3000, 'Kotak', '0', '0', '2014-06-26'),
(97, 'PRD016', 21, 'ajinomoto', '', 1000, 900, 800, 'Bungkus', '0', '0', '2014-09-01');

-- --------------------------------------------------------

--
-- Table structure for table `produk_pembelian`
--

CREATE TABLE `produk_pembelian` (
  `id_produk_pembelian` int(5) NOT NULL,
  `id_faktur` varchar(20) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `id_supplier` int(5) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `tanggal_masuk` datetime NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk_pembelian`
--

INSERT INTO `produk_pembelian` (`id_produk_pembelian`, `id_faktur`, `id_produk`, `id_supplier`, `jumlah`, `tanggal_masuk`, `username`) VALUES
(1, '1', 97, 1, 10, '2015-08-13 06:17:31', 'robby'),
(2, '1', 95, 2, 123, '2015-08-13 06:31:14', 'robby'),
(3, '3', 97, 2, 67, '2015-08-12 00:00:00', 'robby'),
(10, '2', 92, 2, 75, '2015-08-14 04:23:49', 'admin'),
(7, '1', 94, 3, 67, '2015-08-13 14:19:05', 'admin'),
(11, '3', 91, 3, 5, '2016-01-09 01:18:55', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `return_produk`
--

CREATE TABLE `return_produk` (
  `id_return` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `id_supplier` int(5) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `waktu_return` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return_produk`
--

INSERT INTO `return_produk` (`id_return`, `id_produk`, `id_supplier`, `jumlah`, `waktu_return`) VALUES
(1, 95, 2, 7, '2016-01-13 06:27:14'),
(3, 94, 1, 4, '2016-01-13 01:17:21');

-- --------------------------------------------------------

--
-- Table structure for table `statis`
--

CREATE TABLE `statis` (
  `judul` varchar(255) NOT NULL,
  `halaman` varchar(20) NOT NULL,
  `detail` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `statis`
--

INSERT INTO `statis` (`judul`, `halaman`, `detail`) VALUES
('Selamat datang di sistem informasi Penjualan', 'home', '<p>System aplikasi point of sale adalah software yang di rancang, untuk mempermudah user / kasir dalam melakukan transaksi penjulan dan pembelian barang, software point of sale sudah bisa menghitung stock barang secara otomatis. software ini bisa digunakan di toko, minimarket dll. Selain itu keunggulan software ini sudah mencakup, pembayaran hutang, pembayaran piutang dan retur pembelian, retur penjualan barang , penjualan jasa dan software ini sudah dilengkapi dengan beberapa laporan-laporan yang bertujuan untuk mempermudah user dalam mengontrol data barang data â€“ data transaksi penjualan dan pembelian maupun retur barang secara baik. </p>\r\n\r\n<p>Adapun laporan point of sale adalah laporan master barang, laporan transaksi penjualan dan pembelian barang, laporan stock, laporan mutasi stock, laporan daftar customer, laporan piutang , laporan rekap umur piutang, laporan rugi laba dll. Software ini sudah dilengkapi dengan user password level sehingga hak akses user dalam mengoperasikan software bisa di control atau dibatasi yang bertujuan untuk menjaga kerahasiaan data yang semuanya sudah teritegrasi yang dikumpulkan dalam satu modul poin of sale.</p>\r\n\r\n<p>Selain itu keunggulan software ini sudah mencakup, pembayaran hutang, pembayaran piutang dan retur pembelian, retur penjualan barang , penjualan jasa dan software ini sudah dilengkapi dengan beberapa laporan-laporan yang bertujuan untuk mempermudah user dalam mengontrol data barang data â€“ data transaksi penjualan dan pembelian maupun retur barang secara baik. </p>');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(5) NOT NULL,
  `nama_supplier` varchar(255) NOT NULL,
  `bank` varchar(100) NOT NULL,
  `no_rekening` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `bank`, `no_rekening`) VALUES
(1, 'Pt Persada Nusantara tbk', 'Bank BCA', '112 56 7879 23'),
(2, 'Pt Makmur cahaya baru melati', 'Bank Danamon', '3511887071'),
(3, 'Pt Damai Sentosa Sejahtera ', 'Bank Mandiri', '123 1 90897 453');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'customer',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat_lengkap` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`, `aktif`, `id_session`, `alamat_lengkap`) VALUES
('robby', '8d05dd2f03981f86b56c23951f3f34d7', 'Robby Prihandaya', 'robby.prihandaya@gmail.com', '081267771344', 'customer', 'Y', '8d05dd2f03981f86b56c23951f3f34d7', 'Tunggul Hitam, Padang'),
('yolanda', '21aee6fc8b73e6db0e9a31699652cb9d', 'Putu Yolanda', 'putu.yolanda@gmail.com', '085263000122', 'customer', 'Y', '21aee6fc8b73e6db0e9a31699652cb9d', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `costumer`
--
ALTER TABLE `costumer`
  ADD PRIMARY KEY (`id_costumer`);

--
-- Indexes for table `faktur`
--
ALTER TABLE `faktur`
  ADD PRIMARY KEY (`id_faktur`);

--
-- Indexes for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_orders`);

--
-- Indexes for table `orders_temp`
--
ALTER TABLE `orders_temp`
  ADD PRIMARY KEY (`id_orders_temp`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `produk_pembelian`
--
ALTER TABLE `produk_pembelian`
  ADD PRIMARY KEY (`id_produk_pembelian`);

--
-- Indexes for table `return_produk`
--
ALTER TABLE `return_produk`
  ADD PRIMARY KEY (`id_return`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `costumer`
--
ALTER TABLE `costumer`
  MODIFY `id_costumer` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `faktur`
--
ALTER TABLE `faktur`
  MODIFY `id_faktur` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id_orders` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `orders_temp`
--
ALTER TABLE `orders_temp`
  MODIFY `id_orders_temp` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=416;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `produk_pembelian`
--
ALTER TABLE `produk_pembelian`
  MODIFY `id_produk_pembelian` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `return_produk`
--
ALTER TABLE `return_produk`
  MODIFY `id_return` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
