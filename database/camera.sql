-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2024 at 08:19 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `camera`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2018-03-28 23:34:07');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `kode_booking` varchar(8) NOT NULL,
  `id_camera` int(11) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `durasi` int(11) NOT NULL,
  `driver` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pickup` varchar(30) NOT NULL,
  `tgl_booking` date NOT NULL,
  `bukti_bayar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`kode_booking`, `id_camera`, `tgl_mulai`, `tgl_selesai`, `durasi`, `driver`, `status`, `email`, `pickup`, `tgl_booking`, `bukti_bayar`) VALUES
('TRX8717', 20, '2024-05-23', '2024-05-23', 1, 10000, 'Selesai', '123@gmail.com', 'Pickup Sesuai Alamat', '2024-05-21', '21052024011600D8503.png'),
('TRX9502', 22, '2024-05-22', '2024-05-25', 4, 0, 'Selesai', 'asd@gmail.com', 'Ambil Sendiri', '2024-05-21', '21052024011715gambar1.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `camera`
--

CREATE TABLE `camera` (
  `id_camera` int(11) NOT NULL,
  `nama_camera` varchar(150) DEFAULT NULL,
  `id_merek` int(11) DEFAULT NULL,
  `deskripsi` longtext DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `image1` varchar(120) DEFAULT NULL,
  `image2` varchar(120) DEFAULT NULL,
  `image3` varchar(120) DEFAULT NULL,
  `image4` varchar(120) DEFAULT NULL,
  `image5` varchar(120) DEFAULT NULL,
  `BateraiCadangan` int(11) DEFAULT NULL,
  `Tas` int(11) DEFAULT NULL,
  `Charger` int(11) DEFAULT NULL,
  `StrapCamera` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `camera`
--

INSERT INTO `camera` (`id_camera`, `nama_camera`, `id_merek`, `deskripsi`, `harga`, `image1`, `image2`, `image3`, `image4`, `image5`, `BateraiCadangan`, `Tas`, `Charger`, `StrapCamera`, `RegDate`, `UpdationDate`) VALUES
(20, 'Alpha6600', 17, 'Toolkit lengkap untuk imajinasi Anda\r\n?6600 memiliki beragam fitur, untuk menghadirkan yang Anda butuhkan di segala situasi yang ditemui - AF cepat, stabilisasi gambar mantap dan kualitas gambar mengagumkan, baterai berkapasitas tinggi, dan pengambilan gambar film 4K HDR (HLG)2 yang tidak main-main.', 120000, 'Alpha66001.png', 'Alpha66002.png', 'Alpha66004.png', 'Alpha66003.png', 'Alpha6600.png', 1, 1, 1, 1, '2024-05-20 15:21:55', '2024-05-20 15:50:29'),
(21, 'Alpha6100', 17, 'Dengan kecepatan dan performa AF yang luar biasa, serta pelacakan subjek yang persisten, ?6100 menangani mekanika fotografi dengan sangat baik, sehingga Anda bebas berkonsentrasi pada sisi kreatifnya. Kamera menangkap aksi sepersekian detik dan menghasilkan gambar-gambar indah dalam situasi sulit, untuk gambar diam yang mengagumkan dan film 4K resolusi tinggi', 125000, 'Alpha 61001.png', 'Alpha 61002.png', 'Alpha 61003.png', 'Alpha 61004.png', 'Alpha 61005.png', 1, 1, 1, 1, '2024-05-20 15:32:31', '2024-05-20 15:50:38'),
(22, 'HX99', 17, 'Dengan lensa zoom 24-720mm1 ZEISS ® dan rekaman video 4K2 3\r\n\r\nKamera terkecil di dunia5 dengan zoom 24-720mm1, HX99 siap beraksi di mana pun. Dengan lensa ZEISS® Vario-Sonnar T* 24-720mm1 dan fitur tingkat tingginya seperti Fast Intelligent AF dan Eye AF responsif, kamera ini memberikan performa luar biasa dalam setelan apa pun.', 110000, 'HX991.png', 'HX992.png', 'HX993.png', 'HX994.png', 'HX995.png', 1, 1, 1, 1, '2024-05-20 15:41:48', '2024-05-20 15:50:47'),
(23, 'RX100IV', 17, 'RX100 IV dirancang untuk fotografer serius di mana pun, berkat sensor CMOS ditumpuk baru dengan memori terpasang yang menghasilkan gerakan lambat canggih, rana kecepatan tinggi 1/32000, 4K, dan lainnya. Paduan unik fiturnya juga menjadikannya pilihan ideal bagi kalangan pro yang mencari kamera kedua untuk melengkapi model lensanya yang dapat ditukar.', 140000, 'RX100 IV1.png', 'RX100 IV2.png', 'RX100 IV3.png', 'RX100 IV4.png', 'RX100 IV5.png', 1, 1, 1, 1, '2024-05-20 15:46:31', '2024-05-20 15:50:58'),
(24, 'RX10IV', 17, 'Respons AF ultra cepat, (0,03 dtk.3) hingga 24 fps5 dengan pengambilan gambar kontinu pelacakan AF/AE, lensa 24-600 mm8 F2.4-4, dan sensor Exmor RS™, semua dalam satu kamera.', 145000, 'RX10 IV1.png', 'RX10 IV2.png', 'RX10 IV3.png', 'RX10 IV4.png', 'RX10 IV5.png', 0, 1, 1, 0, '2024-05-20 15:51:42', '2024-05-20 16:20:07'),
(28, 'EOS200DII', 16, 'EOS 200D II adalah DSLR Canon paling ringan yang dilengkapi layar LCD Touch Screen Vari-angle. Beratnya tidak melebihi berat dari sebotol air*, kamera ini pas dibawa menggunakan tas dan siap menemanimu memotret setiap hari. Bodi kamera yang mungil ini dilengkapi dengan sensor CMOS APS-C 24,1 megapiksel, prosesor DIGIC 8 dan segudang fitur yang akan memudahkanmu untuk memotret kehidupan yang kamu temui setiap hari.', 75000, 'EOS 200D II1.png', 'EOS 200D II2.png', 'EOS 200D II3.png', 'EOS 200D II4.png', 'EOS 200D II5.png', 0, 1, 1, 0, '2024-05-20 16:17:33', NULL),
(29, 'EOS3000DKit', 16, 'Dilengkapi dengan pegangan yang mantap pada kamera, jendela bidik optik yang dapat secara cepat menangkap momen, dan main dial untuk mengubah fungsi secara cepat, EOS 3000D menawarkan pengalaman menggunakan DSLR klasik bagi pemula. Sensor CMOS 18 megapiksel berukuran APS-C 25 kali lebih besar daripada sensor yang digunakan pada kamera smartphone. Hal ini membuat sensor mampu menangkap lebih banyak cahaya dan detail dalam sebuah foto, juga ikut menyumbangkan kemampuan untuk menghasilkan latar belakang buram nan indah. Informasi gambar secara cepat diproses oleh prosesor gambar DIGIC 4+, menghasilkan output beresolusi tinggi dan berkualitas tinggi. Kecil dan ringan, kira-kira seberat 436g (termasuk baterai dan kartu memori), inilah kamera yang ideal untuk dibawa saat bepergian.', 75000, 'EOS 3000D Kit1.png', 'EOS 3000D Kit2.png', 'EOS 3000D Kit3.png', 'EOS 3000D Kit4.png', 'EOS 3000D Kit5.png', 0, 1, 1, 0, '2024-05-20 16:22:50', '2024-05-20 16:23:31'),
(30, 'EOS5DMarkIVKit', 16, 'Sebagai generasi ke-4 dari kamera EOS full-frame Canon paling laris, EOS 5D Mark IV semakin matang dan memiliki peningkatan besar yang layak dibanggakan. Sensor CMOS full-frame 30.4 megapiksel yang dilengkapi dengan Dual Pixel CMOS AF. AF berkecepatan tinggi dan memiliki presisi tinggi yang bukan hanya untuk memotret tetapi juga untuk pembuatan film 4K yang memungkinkan pembuatan film profesional. Dengan fleksibilitas yang dimilikinya, apa pun subjeknya, DSLR canggih ini mampu menuangkan gagasan kreatif para fotografer profesional menjadi karya yang mengagumkan.', 80000, 'EOS 5D Mark IV Kit1.png', 'EOS 5D Mark IV Kit2.png', 'EOS 5D Mark IV Kit4.png', 'EOS 5D Mark IV Kit4.png', 'EOS 5D Mark IV Kit5.png', 0, 1, 1, 0, '2024-05-20 16:27:15', '2024-05-20 16:27:53'),
(31, 'PowerShotSX70HS', 16, 'PowerShot SX70 HS tidak hanya mencakup panjang super telefoto 1365mm (hingga 2730mm dengan ZoomPlus*), tetapi juga memiliki ujung sudut lebar 21mm yang terlebar di kelasnya. Jarak pemfokusan terdekat 0cm memungkinkan Anda menangkap subjek secara close-up, tepat di depan lensa Anda. Electronic Viewfinder (EVF/Jendela Bidik Elektronik) 2,36 juta titik high definition dan pegangan berukuran besar, sempurna untuk memotret berbagai unggas liar dan objek bergerak lainnya di kejauhan. Dengan semua fitur ini, berikut image stabilization (IS/Stabilisasi Gambar) hingga kira-kira 5 stop** dan berbagai fungsi Framing Assist untuk mendukung pemotretan jarak jauh, Anda siap membidik dan membuat foto liburan sempurna. Dapat merekam segala kenangan dalam film 4K/30P.', 85000, 'PowerShot SX70 HS1.png', 'PowerShot SX70 HS2.png', 'PowerShot SX70 HS3.png', 'PowerShot SX70 HS4.png', 'PowerShot SX70 HS5.png', 0, 1, 1, 0, '2024-05-20 16:31:11', '2024-05-20 16:31:54'),
(32, 'EOS1500DKit', 16, 'Semua fotografer, bahkan pemula, akan dapat mengabadikan foto dan merekam film yang memukau dengan kamera DSLR ini. Dilengkapi dengan sensor CMOS berukuran APS-C 24,1 megapiksel dan jendela bidik optik untuk pengalaman pemotretan/perekaman yang nyata dengan DSLR. Mengabadikan foto yang tajam dengan mudah berkat AF yang cepat dan akurat, serta memiliki pegangan besar agar Anda dapat menggenggam kamera lebih mantap. Konektivitas Wi-Fi / NFC yang mampu mengunggah foto dan video secara lancar ke media sosial.', 90000, 'EOS 1500D Kit1.png', 'EOS 1500D Kit2.png', 'EOS 1500D Kit3.png', 'EOS 1500D Kit4.png', 'EOS 1500D Kit5.png', 0, 1, 1, 1, '2024-05-20 16:35:30', '2024-05-20 16:49:21'),
(33, 'D3500', 18, 'Anda tidak perlu menjadi seorang fotografer untuk mengetahui foto yang bagus ketika Anda melihatnya. Dan Anda tidak perlu menjadi seorang fotografer untuk mengambil foto yang bagus—Anda hanya memerlukan D3500. Ini mudah digunakan seperti point-and-shoot, namun dibutuhkan foto dan video DSLR yang indah sehingga menarik perhatian. Terasa luar biasa di tangan Anda, kokoh dan seimbang dengan kontrol di tempat yang Anda inginkan. Ini kompak, tahan lama dan serbaguna, ideal untuk perjalanan. Dan berfungsi secara lancar dengan ponsel cerdas yang kompatibel, sehingga berbagi foto-foto menakjubkan Anda menjadi lebih mudah dari sebelumnya. Bahkan jika Anda belum pernah menggunakan kamera DSLR, Anda dapat mengambil gambar yang indah dengan D3500. ', 95000, 'D35001.png', 'D35002.png', 'D35003.png', 'D35004.png', 'D35005.png', 0, 1, 1, 0, '2024-05-20 16:48:31', '2024-05-20 16:50:59'),
(34, 'D7500', 18, 'Lahir dari keinginan akan performa unggulan dan inovasi dalam kamera terhubung yang lebih ringkas dan ramping, D7500 menghadirkan resolusi yang mengubah permainan, rentang ISO, pemrosesan gambar, dan efisiensi energi D500 pemenang penghargaan dalam DSLR tingkat antusias. Sederhananya, D7500 dibuat untuk mengungguli kamera mana pun di kelasnya dengan kualitas gambar terbaik, kecepatan luar biasa, fokus otomatis sempurna, video 4K Ultra HD, dan alat kreatif kelas profesional—semuanya dalam desain yang nyaman dan kokoh. Ini adalah kamera untuk pencipta generasi baru.', 100000, 'D75001.png', 'D75002.png', 'D75003.png', 'D75004.png', 'D75005.png', 1, 1, 1, 1, '2024-05-20 16:54:57', '2024-05-20 16:55:54'),
(35, 'D850', 18, 'Saat Nikon memperkenalkan D800 dan D800E, Nikon menetapkan tolok ukur baru untuk kualitas gambar DSLR dan fotografi resolusi super tinggi yang mendekati format medium. Kini, lima tahun kemudian, Nikon dengan bangga memperkenalkan evolusi berikutnya dalam DSLR resolusi tinggi, kamera yang memungkinkan fotografer menangkap aksi cepat dalam resolusi cemerlang 45,7 megapiksel. Dengan kemajuan luar biasa di seluruh aspek—desain sensor, fokus otomatis, rentang dinamis, sensitivitas, kontrol Speedlight, masa pakai baterai, mekanisme penggerak rana dan cermin, Fotografi Senyap dalam mode Live-View, kemampuan peralihan fokus, dan banyak lagi—ini mungkin merupakan hal yang paling mengesankan. , DSLR yang lengkap.', 95000, 'D8501.png', 'D8502.png', 'D8503.png', 'D8504.png', 'D8505.png', 1, 1, 1, 0, '2024-05-20 16:59:54', '2024-05-20 17:00:38'),
(36, 'XT100Kit', 19, 'Sebagai kamera Fujifilm X-T series, baru – baru ini Fujifilm menghadirkan kamera teranyarnya yakni Fujifilm X-T100 yang memang menjadi salah satu opsi menarik di segmen mirroless kelas pemula. Mengusung tema retro, Fujifilm X-T100 memiliki estetika desain seperti kamera film/analog yang didesain stylish dengan pilihan warna Campagne Gold, Dark Silver dan Black. Selain itu, untuk sektor performannya Fujifilm unggul dalam fitur Electronic Viewfinder yang memungkinkan Anda untuk menciptakan gambar yang jernih, bahkan pada situasi dengan tingkat cahaya yang terang.', 110000, 'X-T100 Kit2.png', 'X-T100 Kit1.png', 'X-T100 Kit3.png', 'X-T100 Kit4.png', 'X-T100 Kit5.png', 1, 0, 1, 1, '2024-05-20 17:16:40', '2024-05-20 17:17:34'),
(37, 'XT2kit', 19, 'FUJIFILM X-T2 dengan Model grafit perak mewah menambahkan sentuhan elegan. FUJIFILM X-T2 memberikan semua yang Anda butuhkan, dipadukan dengan desain yang elegan, ringan dan kuat. Dengan kualitas gambar yang tak tertandingi dan perekaman film 4K, dibuat mungkin dengan sensor dan pengolahan mesin terbaru, ini adalah seri X disempurnakan.FUJIFILM X-T2 dengan fitur X-Trans ™ CMOS III 24.3MP, sensor APS-C tanpa low-pass filter membuat kinerja tertinggi dalam sejarah X-Series, serta X-Processor Pro berkecepatan tinggi untuk memberikan reproduksi warna yang luar biasa dan video dengan sensitivitas ISO tinggi dan noise yang rendah.', 120000, 'X-T2 kit1.png', 'X-T2 kit2.png', 'X-T2 kit3.png', 'X-T2 kit4.png', 'X-T2 kit5.png', 1, 1, 1, 1, '2024-05-20 17:29:13', '2024-05-20 17:29:54');

-- --------------------------------------------------------

--
-- Table structure for table `cek_booking`
--

CREATE TABLE `cek_booking` (
  `kode_booking` varchar(8) NOT NULL,
  `id_camera` int(11) NOT NULL,
  `tgl_booking` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cek_booking`
--

INSERT INTO `cek_booking` (`kode_booking`, `id_camera`, `tgl_booking`, `status`) VALUES
('TRX4832', 18, '2024-05-21', 'Selesai'),
('TRX4832', 18, '2024-05-22', 'Selesai'),
('TRX7627', 18, '2024-05-23', 'Selesai'),
('TRX6760', 19, '2024-05-21', 'Menunggu Pembayaran'),
('TRX9654', 18, '2024-06-08', 'Menunggu Pembayaran'),
('TRX6537', 24, '2024-05-21', 'Selesai'),
('TRX7565', 20, '2024-05-22', 'Selesai'),
('TRX2542', 24, '2024-05-24', 'Menunggu Pembayaran'),
('TRX2542', 24, '2024-05-25', 'Menunggu Pembayaran'),
('TRX8717', 20, '2024-05-23', 'Selesai'),
('TRX9502', 22, '2024-05-22', 'Selesai'),
('TRX9502', 22, '2024-05-23', 'Selesai'),
('TRX9502', 22, '2024-05-24', 'Selesai'),
('TRX9502', 22, '2024-05-25', 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id_cu` int(11) NOT NULL,
  `nama_visit` varchar(100) DEFAULT NULL,
  `email_visit` varchar(120) DEFAULT NULL,
  `telp_visit` char(16) DEFAULT NULL,
  `pesan` longtext DEFAULT NULL,
  `tgl_posting` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id_cu`, `nama_visit`, `email_visit`, `telp_visit`, `pesan`, `tgl_posting`, `status`) VALUES
(1, 'Anuj Kumar', 'webhostingamigo@gmail.com', '2147483647', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2017-06-18 10:03:07', 1),
(2, 'kjk', 'jlkl@gmail.com', '98989898', 'kjlkjkljklj', '2018-03-06 14:01:39', 1),
(3, 'asd', 'asd@gmail.com', 'asd', 'asd', '2024-05-20 04:31:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contactusinfo`
--

CREATE TABLE `contactusinfo` (
  `id_info` int(11) NOT NULL,
  `alamat_kami` tinytext DEFAULT NULL,
  `email_kami` varchar(255) DEFAULT NULL,
  `telp_kami` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactusinfo`
--

INSERT INTO `contactusinfo` (`id_info`, `alamat_kami`, `email_kami`, `telp_kami`) VALUES
(1, 'Jl. Pringgodani No.17, Jurug, Ngringo, Kec. Jaten, Kabupaten Karanganyar, Jawa Tengah 57731', 'icadPhotoworks@gmail.com', '081234567810');

-- --------------------------------------------------------

--
-- Table structure for table `merek`
--

CREATE TABLE `merek` (
  `id_merek` int(11) NOT NULL,
  `nama_merek` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `merek`
--

INSERT INTO `merek` (`id_merek`, `nama_merek`, `CreationDate`, `UpdationDate`) VALUES
(16, 'CANON', '2024-05-18 17:55:10', NULL),
(17, 'SONY', '2024-05-18 17:55:30', NULL),
(18, 'NIKON', '2024-05-20 16:36:51', '2024-05-20 16:36:57'),
(19, 'FUJIFILM', '2024-05-20 17:15:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																																																																																																																																																																																																																																																																																																																																																					<h1></h1><h1 style=\"text-align: left;\"><span style=\"font-family: arial;\"><span style=\"color: inherit; font-size: x-large;\"><span style=\"font-weight: bold;\">Syarat dan Ketentuan Sewa Alat Rental Kamera</span><br></span></span></h1><h1></h1><h1 style=\"text-align: left;\"><strong style=\"font-family: arial; color: inherit; font-size: x-large;\">Peraturan Umum:<br></strong></h1><h1><div style=\"text-align: left;\"><strong style=\"color: inherit; font-family: inherit; font-size: x-large;\">Identitas Penyewa:</strong></div><ul data-sourcepos=\"6:5-6:19\"><li data-sourcepos=\"6:5-6:19\" style=\"text-align: left;\"><span style=\"font-family: arial; font-size: x-large;\">Penyewa wajib menunjukkan identitas diri yang sah (KTP, SIM, atau Paspor) saat pemesanan dan pengambilan alat.</span></li></ul><ul data-sourcepos=\"6:5-6:19\"><li data-sourcepos=\"7:5-7:49\" style=\"text-align: left;\"><span style=\"font-family: arial; font-size: x-large;\">Penyewa di bawah umur harus didampingi oleh orang tua/wali yang sah dengan menunjukkan identitas diri orang tua/wali.</span></li></ul><strong style=\"color: inherit;\"><div style=\"text-align: left;\"><strong style=\"color: inherit; font-family: inherit; font-size: x-large;\">Pemesanan dan Pembayaran:</strong></div></strong><ul data-sourcepos=\"10:5-10:44\"><li data-sourcepos=\"10:5-10:44\" style=\"text-align: left;\"><span style=\"font-family: arial; font-size: x-large;\">Pemesanan alat dapat dilakukan melalui website, telepon, atau datang langsung ke toko.</span></li></ul><ul data-sourcepos=\"10:5-10:44\"><li data-sourcepos=\"11:5-11:85\" style=\"text-align: left;\"><span style=\"font-family: arial; font-size: x-large;\">Pembayaran sewa dapat dilakukan secara tunai, transfer bank, atau kartu kredit. (Untuk Pemesanan Dari Website Wajib Melalui Pembayaran Online)</span></li></ul><ul data-sourcepos=\"10:5-10:44\"><li data-sourcepos=\"12:5-12:5\" style=\"text-align: left;\"><span style=\"font-family: arial; font-size: x-large;\">Uang muka minimal 50% harus dibayarkan saat pemesanan. (Untuk Pemesanan Dari Website Wajib Dibayar Lunas)</span></li></ul><ul data-sourcepos=\"10:5-10:44\"><li data-sourcepos=\"13:5-14:0\" style=\"text-align: left;\"><span style=\"font-family: arial; font-size: x-large;\">Sisa pembayaran harus dilunasi sebelum pengambilan alat.</span></li></ul><strong style=\"color: inherit;\"><div style=\"text-align: left;\"><strong style=\"color: inherit; font-family: inherit; font-size: x-large;\">Pengambilan dan Pengembalian Alat:</strong></div></strong><ul data-sourcepos=\"16:5-19:19\"><li data-sourcepos=\"16:5-16:92\" style=\"text-align: left;\"><span style=\"font-family: arial; font-size: x-large;\">Pengambilan alat hanya dapat dilakukan setelah pembayaran sewa dan uang jaminan lunas.</span></li></ul><ul data-sourcepos=\"16:5-19:19\"><li data-sourcepos=\"17:5-17:64\" style=\"text-align: left;\"><span style=\"font-family: arial; font-size: x-large;\">Penyewa wajib memeriksa kondisi alat sebelum dibawa pergi.</span></li></ul><ul data-sourcepos=\"16:5-19:19\"><li data-sourcepos=\"18:5-18:82\" style=\"text-align: left;\"><span style=\"font-family: arial; font-size: x-large;\">Pengembalian alat harus dilakukan sesuai dengan waktu yang telah disepakati.</span></li></ul><ul data-sourcepos=\"16:5-19:19\"><li data-sourcepos=\"19:5-19:19\" style=\"text-align: left;\"><span style=\"font-family: arial; font-size: x-large;\">Keterlambatan pengembalian alat dikenakan denda sesuai dengan kebijakan toko.</span></li></ul><strong style=\"color: inherit;\"><div style=\"text-align: left;\"><strong style=\"color: inherit; font-family: inherit; font-size: x-large;\">Kerusakan dan Kehilangan Alat:</strong></div></strong><ul data-sourcepos=\"22:5-25:0\"><li data-sourcepos=\"22:5-22:85\" style=\"text-align: left;\"><span style=\"font-family: arial; font-size: x-large;\">Penyewa bertanggung jawab atas kerusakan atau kehilangan alat selama masa sewa.</span></li></ul><ul data-sourcepos=\"22:5-25:0\"><li data-sourcepos=\"23:5-23:84\" style=\"text-align: left;\"><span style=\"font-family: arial; font-size: x-large;\">Biaya perbaikan atau penggantian alat akan ditanggung sepenuhnya oleh penyewa.</span></li></ul><ul data-sourcepos=\"22:5-25:0\"><li data-sourcepos=\"24:5-25:0\" style=\"text-align: left;\"><span style=\"font-family: arial; font-size: x-large;\">Kehilangan alat akan diakibatkan denda seharga kamera yang disewa.</span></li></ul><strong style=\"color: inherit;\"><div style=\"text-align: left;\"><strong style=\"color: inherit; font-family: inherit; font-size: x-large;\">Ketentuan Tambahan:</strong></div></strong><ul data-sourcepos=\"28:1-32:0\"><li data-sourcepos=\"28:1-28:105\" style=\"text-align: left;\"><span style=\"font-family: arial; font-size: x-large;\">Penyewa wajib menggunakan alat sesuai dengan instruksi manual dan tidak melakukan modifikasi pada alat.</span></li></ul><ul data-sourcepos=\"28:1-32:0\"><li data-sourcepos=\"29:1-29:82\" style=\"text-align: left;\"><span style=\"font-family: arial; font-size: x-large;\">Penyewa dilarang menyewakan kembali alat kepada pihak lain tanpa izin dari toko.</span></li></ul><ul data-sourcepos=\"28:1-32:0\"><li data-sourcepos=\"30:1-30:96\" style=\"text-align: left;\"><span style=\"font-family: arial; font-size: x-large;\">Toko berhak membatalkan sewa jika penyewa tidak memenuhi syarat atau melanggar ketentuan sewa.</span></li></ul><ul data-sourcepos=\"28:1-32:0\"><li data-sourcepos=\"31:1-32:0\" style=\"text-align: left;\"><span style=\"font-family: arial; font-size: x-large;\">Segala perselisihan yang timbul terkait dengan sewa alat akan diselesaikan secara musyawarah mufakat. Jika tidak tercapai kesepakatan, penyewa dan pihak toko bersedia untuk menyelesaikannya melalui jalur hukum yang berlaku.</span></li></ul><strong style=\"color: inherit;\"><div style=\"text-align: left;\"><strong style=\"color: inherit; font-family: inherit; font-size: x-large;\">Catatan:</strong></div></strong><ul data-sourcepos=\"35:1-37:0\"><li data-sourcepos=\"35:1-35:86\" style=\"text-align: left;\"><span style=\"font-family: arial; font-size: x-large;\">Syarat dan ketentuan ini dapat berubah sewaktu-waktu tanpa pemberitahuan sebelumnya.</span></li></ul><ul data-sourcepos=\"35:1-37:0\"><li data-sourcepos=\"36:1-37:0\" style=\"text-align: left;\"><span style=\"font-family: arial; font-size: x-large;\">Silakan hubungi toko untuk informasi lebih lanjut.</span></li></ul><strong style=\"color: inherit;\"><div style=\"text-align: left;\"><strong style=\"color: inherit; font-family: inherit; font-size: x-large;\">Terima kasih telah memilih rental kamera kami!</strong></div></strong></h1>																																																																																																																																																																																																																																																																																																																																																					'),
(5, 'Rekening', 'rekening', '																						1273961257532812 Bank BRI a/n Icad<div>Atau lewat&nbsp;<span style=\"font-size: 1em;\">Dana, Ovo, Gopay, ShoppePay dengan nomor</span><span style=\"font-size: 1em;\">&nbsp;081234567810&nbsp; a/n Icad</span></div><div><div><div><br></div></div></div>																																	'),
(0, 'Driver', 'driver', '10000'),
(2, 'Privacy Policy', 'privacy', '																																																																																																																																				<h1></h1><h1 style=\"text-align: left;\"><span style=\"color: inherit; font-size: x-large; font-family: arial;\"><span style=\"font-weight: bold;\">Kebijakan Privasi dan Persyaratan Layanan</span><br></span></h1><h1></h1><h1 style=\"text-align: left;\"><span style=\"font-size: x-large; font-family: arial;\"><strong style=\"color: inherit;\">Pendahuluan<br></strong><span style=\"color: inherit;\">Rental Kamera PlayCam berkomitmen untuk melindungi privasi Anda dan menjaga keamanan informasi pribadi Anda. </span><span class=\"citation-0 citation-end-0\" style=\"color: inherit;\">Kebijakan Privasi ini&nbsp; menjelaskan bagaimana kami mengumpulkan, menggunakan, dan mengungkapkan informasi pribadi Anda saat Anda menggunakan situs</span><span style=\"color: inherit;\"> web kami, aplikasi seluler, atau layanan kami Kebijakan ini juga menjelaskan pilihan Anda terkait dengan informasi pribadi Anda dan bagaimana Anda dapat mengakses dan memperbaruinya.<br></span><strong style=\"color: inherit;\">Informasi yang Kami Kumpulkan<br></strong><span style=\"color: inherit;\">Kami mengumpulkan informasi pribadi dari Anda ketika Anda menggunakan Layanan kami, termasuk:</span></span><ul data-sourcepos=\"11:1-16:0\"><li data-sourcepos=\"11:1-11:81\" style=\"text-align: left;\"><span style=\"font-size: x-large; font-family: arial;\"><strong>Informasi Kontak:</strong> Nama, alamat email, nomor telepon, dan alamat rumah Anda.</span></li></ul><ul data-sourcepos=\"11:1-16:0\"><li data-sourcepos=\"12:1-12:106\" style=\"text-align: left;\"><span style=\"font-size: x-large; font-family: arial;\"><strong>Informasi Pembayaran:</strong> Informasi pembayaran Anda, seperti nomor kartu kredit dan tanggal kedaluwarsa.</span></li></ul><ul data-sourcepos=\"11:1-16:0\"><li data-sourcepos=\"13:1-13:194\" style=\"text-align: left;\"><span style=\"font-size: x-large; font-family: arial;\"><strong>Informasi Penggunaan:</strong> Informasi tentang cara Anda menggunakan Layanan kami, seperti halaman yang Anda kunjungi, waktu yang Anda habiskan di situs web kami, dan pencarian yang Anda lakukan.</span></li></ul><ul data-sourcepos=\"11:1-16:0\"><li data-sourcepos=\"14:1-14:163\" style=\"text-align: left;\"><span style=\"font-size: x-large; font-family: arial;\"><strong>Informasi Perangkat:</strong> Informasi tentang perangkat yang Anda gunakan untuk mengakses Layanan kami, seperti alamat IP Anda, jenis perangkat, dan sistem operasi.</span></li></ul><ul data-sourcepos=\"11:1-16:0\"><li data-sourcepos=\"15:1-16:0\" style=\"text-align: left;\"><span style=\"font-size: x-large; font-family: arial;\"><strong>Informasi Media Sosial:</strong> Jika Anda masuk ke Layanan kami menggunakan akun media sosial, kami mungkin mengumpulkan informasi dari profil media sosial Anda, seperti nama, gambar profil, dan daftar teman Anda.</span></li></ul><span style=\"font-size: x-large; font-family: arial;\"><strong style=\"color: inherit;\">Cara Kami Menggunakan Informasi Anda<br></strong><span style=\"color: inherit;\">Kami menggunakan informasi pribadi Anda untuk:</span></span><ul data-sourcepos=\"21:1-27:0\"><li data-sourcepos=\"21:1-21:41\" style=\"text-align: left;\"><span style=\"font-size: x-large; font-family: arial;\">Menyediakan dan mengelola Layanan kami.</span></li></ul><ul data-sourcepos=\"21:1-27:0\"><li data-sourcepos=\"22:1-22:28\" style=\"text-align: left;\"><span style=\"font-size: x-large; font-family: arial;\">Memproses pembayaran Anda.</span></li></ul><ul data-sourcepos=\"21:1-27:0\"><li data-sourcepos=\"23:1-23:137\" style=\"text-align: left;\"><span style=\"font-size: x-large; font-family: arial;\">Mengirimkan komunikasi kepada Anda tentang Layanan kami, seperti pemberitahuan pemesanan, pengingat pengembalian, dan penawaran khusus.</span></li></ul><ul data-sourcepos=\"21:1-27:0\"><li data-sourcepos=\"24:1-24:57\" style=\"text-align: left;\"><span style=\"font-size: x-large; font-family: arial;\">Meningkatkan Layanan kami dan mengembangkan fitur baru.</span></li></ul><ul data-sourcepos=\"21:1-27:0\"><li data-sourcepos=\"25:1-25:49\" style=\"text-align: left;\"><span style=\"font-size: x-large; font-family: arial;\">Mencegah penipuan dan melindungi keamanan Anda.</span></li></ul><ul data-sourcepos=\"21:1-27:0\"><li data-sourcepos=\"26:1-27:0\" style=\"text-align: left;\"><span style=\"font-size: x-large; font-family: arial;\">Mematuhi hukum dan peraturan yang berlaku.</span></li></ul><span style=\"font-size: x-large; font-family: arial;\"><strong style=\"color: inherit;\">Pembagian Informasi Anda<br></strong><span style=\"color: inherit;\">Kami tidak akan membagikan informasi pribadi Anda dengan pihak ketiga kecuali:</span></span><ul data-sourcepos=\"32:1-37:0\"><li data-sourcepos=\"32:1-32:26\" style=\"text-align: left;\"><span style=\"font-size: x-large; font-family: arial;\">Dengan persetujuan Anda.</span></li></ul><ul data-sourcepos=\"32:1-37:0\"><li data-sourcepos=\"33:1-33:38\" style=\"text-align: left;\"><span style=\"font-size: x-large; font-family: arial;\">Untuk memenuhi kewajiban hukum kami.</span></li></ul><ul data-sourcepos=\"32:1-37:0\"><li data-sourcepos=\"34:1-34:58\" style=\"text-align: left;\"><span style=\"font-size: x-large; font-family: arial;\">Untuk melindungi hak-hak kami atau hak-hak pihak ketiga.</span></li></ul><ul data-sourcepos=\"32:1-37:0\"><li data-sourcepos=\"35:1-35:56\" style=\"text-align: left;\"><span style=\"font-size: x-large; font-family: arial;\">Untuk mencegah penipuan atau aktivitas ilegal lainnya.</span></li></ul><ul data-sourcepos=\"32:1-37:0\"><li data-sourcepos=\"36:1-37:0\" style=\"text-align: left;\"><span style=\"font-size: x-large; font-family: arial;\">Untuk mengoperasikan Layanan kami.</span></li></ul><span style=\"font-size: x-large; font-family: arial;\"><strong style=\"color: inherit;\">Pilihan Anda<br></strong><span style=\"color: inherit;\">Anda memiliki pilihan berikut terkait dengan informasi pribadi Anda:</span></span><ul data-sourcepos=\"42:1-45:0\"><li data-sourcepos=\"42:1-42:112\" style=\"text-align: left;\"><span style=\"font-size: x-large; font-family: arial;\"><strong>Akses dan Pembaruan:</strong> Anda dapat mengakses dan memperbarui informasi pribadi Anda melalui akun online Anda.</span></li></ul><ul data-sourcepos=\"42:1-45:0\"><li data-sourcepos=\"43:1-43:184\" style=\"text-align: left;\"><span style=\"font-size: x-large; font-family: arial;\"><strong>Penarikan Diri:</strong> Anda dapat berhenti berlangganan dari komunikasi pemasaran kami kapan saja dengan mengklik tautan \"berhenti berlangganan\" di email yang kami kirimkan kepada Anda.</span></li></ul><ul data-sourcepos=\"42:1-45:0\"><li data-sourcepos=\"44:1-45:0\" style=\"text-align: left;\"><span style=\"font-size: x-large; font-family: arial;\"><strong>Penghapusan:</strong> Anda dapat meminta kami untuk menghapus informasi pribadi Anda dengan menghubungi kami di [email protected]</span></li></ul><span style=\"font-size: x-large; font-family: arial;\"><strong style=\"color: inherit;\">Keamanan Data<br></strong><span style=\"color: inherit;\">Kami menggunakan langkah-langkah keamanan fisik, teknis, dan administratif yang wajar untuk melindungi informasi pribadi Anda dari akses, penggunaan, pengungkapan, perubahan, atau perusakan yang tidak sah.<br></span><strong style=\"color: inherit;\">Perubahan Kebijakan<br></strong><span style=\"color: inherit;\">Kami dapat memperbarui Kebijakan ini dari waktu ke waktu. Jika kami membuat perubahan material, kami akan memberi tahu Anda melalui email atau dengan memposting pemberitahuan di Layanan kami.<br></span><strong style=\"color: inherit;\">Hubungi Kami<br></strong><span style=\"color: inherit;\">Jika Anda memiliki pertanyaan tentang Kebijakan ini, silakan hubungi kami di <a href=\"icadPhotoworks@gmail.com\" title=\"icadPhotoworks@gmail.com\" target=\"\">icadPhotoworks@gmail.com</a></span><a href=\"mailto:info@example.com\" style=\"background-color: rgb(255, 255, 255); color: rgb(250, 40, 55); transition-duration: 0.5s; fill: rgb(250, 40, 55); outline: none;\"><br></a><strong style=\"color: inherit;\">Terima kasih telah menggunakan Layanan kami!</strong></span></h1>																																																																																																																																				'),
(3, 'Tentang Kami', 'aboutus', '																																																																																																																																																																																																																																																																																																																																																																<h1 style=\"text-align: center;\"></h1><h1 style=\"text-align: center;\"></h1><h1></h1><h1 style=\"text-align: left;\"><strong style=\"color: inherit; font-family: arial; font-size: x-large;\">Rental Kamera PlayCam: Solusi Sempurna untuk Kebutuhan Fotografi Anda<br></strong></h1><h1></h1><h1 style=\"text-align: left;\"><span style=\"color: inherit; font-family: arial; font-size: x-large;\">Di Rental Kamera PlayCam, kami memahami bahwa fotografi bukan sekadar mengambil gambar; ini tentang menangkap momen, menceritakan kisah, dan mengekspresikan kreativitas Anda. Kami berkomitmen untuk menyediakan Anda dengan peralatan dan layanan terbaik untuk membantu Anda mencapai visi fotografi Anda.<br></span></h1><h1 style=\"text-align: left;\"><span style=\"font-family: arial; font-size: x-large;\"><strong style=\"color: inherit;\">Tentang Kami<br></strong></span></h1><h1></h1><h1 style=\"text-align: center;\"><div style=\"text-align: left;\"><span style=\"color: inherit; font-family: arial; font-size: x-large;\">Rental Kamera PlayCam dengan misi untuk menyediakan akses yang mudah dan terjangkau ke peralatan fotografi berkualitas tinggi bagi para fotografer dari semua tingkatan. Kami adalah tim fotografer yang bersemangat yang memiliki pengalaman bertahun-tahun di industri ini. Kami memahami kebutuhan fotografer dan kami berkomitmen untuk menyediakan layanan pelanggan yang luar biasa.</span></div></h1><h1><div style=\"text-align: left;\"><strong style=\"color: inherit; font-family: inherit; font-size: x-large;\">Mengapa Memilih Rental Kamera?</strong></div><div style=\"text-align: left;\"><span style=\"color: inherit; font-size: x-large; font-family: arial;\">Ada banyak alasan untuk memilih Rental Kamera sebagai mitra fotografi Anda:</span></div><ul data-sourcepos=\"15:1-17:26\"><li data-sourcepos=\"15:1-15:252\" style=\"text-align: left;\"><span style=\"font-family: arial; font-size: x-large;\"><strong style=\"\">Peralatan Berkualitas Tinggi:</strong> Kami menawarkan berbagai macam peralatan fotografi dari merek ternama seperti Canon, Nikon, Sony, dan lainnya. Semua peralatan kami dirawat dengan baik dan dikalibrasi secara teratur untuk memastikan kinerja optimal.</span></li></ul><ul data-sourcepos=\"15:1-17:26\"><li data-sourcepos=\"16:1-16:187\" style=\"text-align: left;\"><span style=\"font-family: arial; font-size: x-large;\"><strong>Harga Terjangkau:</strong> Kami menawarkan harga sewa yang kompetitif untuk memenuhi berbagai anggaran. Kami juga menawarkan berbagai paket sewa yang dapat disesuaikan dengan kebutuhan Anda.</span></li></ul><ul data-sourcepos=\"15:1-17:26\"><li data-sourcepos=\"17:1-17:26\" style=\"text-align: left;\"><span style=\"font-family: arial; font-size: x-large;\"><strong>Layanan Pelanggan yang Luar Biasa:</strong> Tim kami yang ramah dan berpengetahuan luas selalu siap membantu Anda memilih peralatan yang tepat untuk kebutuhan Anda. Kami juga menawarkan dukungan teknis untuk membantu Anda mengatasi masalah apa pun yang mungkin Anda temui.</span></li></ul><ul data-sourcepos=\"15:1-17:26\"><li data-sourcepos=\"18:1-19:0\" style=\"text-align: left;\"><span style=\"font-family: arial; font-size: x-large;\"><strong>Mudah Digunakan:</strong> Situs web dan sistem pemesanan kami yang mudah digunakan memungkinkan Anda untuk memesan dan menyewa peralatan dengan cepat dan mudah. Kami juga menawarkan pickup dan pengantaran lokal untuk kenyamanan Anda.</span></li></ul><div style=\"text-align: left;\"><strong style=\"color: inherit; font-size: x-large; font-family: arial;\">Komitmen Kami</strong></div><div style=\"text-align: left;\"><span style=\"color: inherit; font-size: x-large; font-family: arial;\">Kami berkomitmen untuk menyediakan Anda dengan pengalaman sewa yang positif dan bebas stres. Kami ingin Anda dapat fokus pada apa yang paling penting: fotografi Anda.</span></div><div style=\"text-align: left;\"><strong style=\"color: inherit; font-size: x-large; font-family: arial;\">Hubungi Kami</strong></div><div style=\"text-align: left;\"><span style=\"font-size: x-large; font-family: arial;\"><span style=\"color: inherit;\">Jika Anda memiliki pertanyaan atau ingin memesan peralatan, silakan hubungi kami di <a href=\"icadPhotoworks@gmail.com\" title=\"icadPhotoworks@gmail.com\" target=\"\">icadPhotoworks@gmail.com</a></span><span style=\"color: inherit;\">&nbsp;atau 081234567810. Kami akan dengan senang hati membantu Anda.</span></span></div><div style=\"text-align: left;\"><strong style=\"color: inherit; font-size: x-large; font-family: arial;\">Terima kasih telah memilih Rental Kamera PlayCam!</strong></div></h1>																																																																																																																																																																																																																																																																																																																																																																'),
(11, 'FAQs', 'faqs', '																																																																																																			<div style=\"text-align: justify;\"><h1 style=\"text-align: center;\"></h1><h1 style=\"text-align: left;\"><span style=\"font-size: x-large; font-family: arial;\"><span style=\"color: inherit;\">Frequently Asked Questions (FAQs)<br></span><strong style=\"color: inherit;\">Tentang Rental Kamera PlayCam<br></strong><strong style=\"color: inherit;\">1. Apa saja jenis kamera yang disewakan?<br></strong><span style=\"color: inherit;\">&nbsp; &nbsp; Kami menawarkan berbagai macam kamera dari merek ternama seperti Canon, Nikon, Sony, dan lainnya. Kami memiliki kamera DSLR, mirrorless, point-and-shoot, dan action camera.<br></span><strong style=\"color: inherit;\">2. Berapa lama saya dapat menyewa kamera?<br></strong><span style=\"color: inherit;\">&nbsp; &nbsp; Anda dapat menyewa kamera selama minimal 1 hari dan maksimal 30 hari.<br></span><strong style=\"color: inherit;\">3. Bagaimana cara memesan kamera?<br></strong><span style=\"color: inherit;\">&nbsp; &nbsp; Anda dapat memesan kamera secara online melalui situs web kami atau dengan menghubungi kami di <a href=\"icadPhotoworks@gmail.com\" title=\"icadPhotoworks@gmail.com\" target=\"\">icadPhotoworks@gmail.com</a> atau 081234567810.<br></span><strong style=\"color: inherit;\">4. Di mana saya dapat mengambil kamera yang disewa?<br></strong><span style=\"color: inherit;\">&nbsp; &nbsp; Anda dapat mengambil kamera di toko kami atau kami dapat mengantarkannya ke alamat Anda.<br></span><strong style=\"color: inherit;\">5. Apa saja yang termasuk dalam sewa kamera?<br></strong><span style=\"color: inherit;\">&nbsp; &nbsp; Sewa kamera termasuk kamera, baterai, charger, dan kartu memori. Anda juga dapat menyewa lensa, tripod, dan aksesoris lainnya dengan biaya tambahan.<br></span><strong style=\"color: inherit;\">6. Bagaimana cara mengembalikan kamera yang disewa?<br></strong><span style=\"color: inherit;\">&nbsp; &nbsp; Anda dapat mengembalikan kamera di toko kami atau kami dapat mengambilnya dari alamat Anda.<br></span><strong style=\"color: inherit;\">7. Apa yang terjadi jika saya merusak kamera yang disewa?<br></strong><span style=\"color: inherit;\">&nbsp; &nbsp; Anda akan bertanggung jawab atas kerusakan yang terjadi pada kamera selama masa sewa. Biaya perbaikan atau penggantian kamera akan ditanggung sepenuhnya oleh Anda.<br></span><strong style=\"color: inherit;\">8. Apa saja syarat dan ketentuan sewa kamera?<br></strong><span style=\"color: inherit;\">&nbsp; &nbsp; Anda dapat membaca syarat dan ketentuan sewa kamera di situs web kami atau di toko kami.<br></span><strong style=\"color: inherit;\">Tentang Layanan Kami<br></strong><strong style=\"color: inherit;\">1. Apakah Anda menawarkan layanan fotografi?<br></strong><span style=\"color: inherit;\">&nbsp; &nbsp; Ya, kami menawarkan berbagai layanan fotografi, seperti pemotretan pernikahan, pemotretan keluarga, dan pemotretan produk.<br></span><strong style=\"color: inherit;\">2. Apakah Anda menawarkan kelas fotografi?<br></strong>&nbsp; &nbsp; Untuk sekarang belum ada, mungkin dikemudian hari akan dibuka kelas fotografi.<br><strong style=\"color: inherit;\">3. Apakah Anda memiliki toko fisik?<br></strong><span style=\"color: inherit;\">&nbsp; &nbsp; Ya, kami memiliki bisa dilihat di halaman hubungi kami.<br></span><strong style=\"color: inherit;\">4. Bagaimana cara saya menghubungi Anda?<br></strong><span style=\"color: inherit;\">&nbsp; &nbsp; Anda dapat menghubungi kami di <a href=\"icadPhotoworks@gmail.com\" title=\"icadPhotoworks@gmail.com\" target=\"\">icadPhotoworks@gmail.com</a> atau 081234567810.<br></span><strong style=\"color: inherit;\">Terima kasih telah memilih Rental Kamera PlayCam!</strong></span></h1></div>																																																																																																			');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(120) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `telp` char(11) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `ktp` varchar(120) NOT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama_user`, `email`, `password`, `telp`, `alamat`, `ktp`, `RegDate`, `UpdationDate`) VALUES
(7, 'Yusuf', 'yusuf@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '08122233343', 'Jl. Sukosemolo', '07092022132814id.png', '2022-09-07 11:28:14', '2024-05-20 04:30:54'),
(8, 'Widya Prastika', 'widya@gmail.com', '9146bfc09df862ee46fa9b512c72f9a6', '08977788898', 'Jl. Ahmad Yani', '07092022132849id.png', '2022-09-07 11:28:49', NULL),
(9, 'Alvian Andhi', 'alvian@gmail.com', 'e8cb77839eba5ec65525e642c3899b3b', '08766655567', 'Jl. Rowo Jombor', '07092022132925id.png', '2022-09-07 11:29:25', NULL),
(10, 'asdasd', '123@gmail.com', '7815696ecbf1c96e6894b779456d330e', '123', 'asd', '19052024091753Black & White Modern Simple Printable Class Schedule (3).png', '2024-05-19 07:17:53', NULL),
(11, 'asd', 'asd@gmail.com', '7815696ecbf1c96e6894b779456d330e', '122', 'asd', '19052024172659Black & White Modern Simple Printable Class Schedule (4).png', '2024-05-19 15:26:59', NULL),
(12, 'asdasd', 'a@gmail.com', '7815696ecbf1c96e6894b779456d330e', '123', 'asdadsasdsad', '19052024193327IMG20240202102044-removebg-preview.png', '2024-05-19 17:33:27', '2024-05-19 17:34:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`kode_booking`);

--
-- Indexes for table `camera`
--
ALTER TABLE `camera`
  ADD PRIMARY KEY (`id_camera`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id_cu`);

--
-- Indexes for table `contactusinfo`
--
ALTER TABLE `contactusinfo`
  ADD PRIMARY KEY (`id_info`);

--
-- Indexes for table `merek`
--
ALTER TABLE `merek`
  ADD PRIMARY KEY (`id_merek`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `camera`
--
ALTER TABLE `camera`
  MODIFY `id_camera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id_cu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contactusinfo`
--
ALTER TABLE `contactusinfo`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `merek`
--
ALTER TABLE `merek`
  MODIFY `id_merek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
