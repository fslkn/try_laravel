-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Jan 2020 pada 05.42
-- Versi server: 10.1.40-MariaDB
-- Versi PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `try_laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Sari Tania Puspita', NULL, NULL),
(2, 'Diki Alfarabi Hadi', NULL, NULL),
(3, 'Luluh Sinaga', NULL, NULL),
(4, 'Lamar Putra', NULL, NULL),
(5, 'Banawi Kuswoyo', NULL, NULL),
(6, 'Ratih Wijayanti', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota_hadiah`
--

CREATE TABLE `anggota_hadiah` (
  `id` int(10) UNSIGNED NOT NULL,
  `anggota_id` int(10) UNSIGNED NOT NULL,
  `hadiah_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `anggota_hadiah`
--

INSERT INTO `anggota_hadiah` (`id`, `anggota_id`, `hadiah_id`, `created_at`, `updated_at`) VALUES
(1, 6, 6, NULL, NULL),
(2, 2, 5, NULL, NULL),
(3, 6, 10, NULL, NULL),
(4, 3, 4, NULL, NULL),
(5, 3, 6, NULL, NULL),
(6, 1, 4, NULL, NULL),
(7, 4, 11, NULL, NULL),
(8, 5, 5, NULL, NULL),
(9, 2, 9, NULL, NULL),
(10, 6, 6, NULL, NULL),
(11, 3, 2, NULL, NULL),
(12, 2, 3, NULL, NULL),
(13, 1, 8, NULL, NULL),
(14, 6, 8, NULL, NULL),
(15, 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `articles`
--

INSERT INTO `articles` (`id`, `judul`, `created_at`, `updated_at`) VALUES
(1, 'Placeat saepe ea possimus provident quos est molestiae reiciendis.', NULL, NULL),
(2, 'Totam laudantium molestiae similique sit.', NULL, NULL),
(3, 'Aut consequatur ducimus ut non voluptatem voluptas.', NULL, NULL),
(4, 'Ad sit voluptatem qui ut dolorem.', NULL, NULL),
(5, 'Qui consequatur eum fuga corrupti.', NULL, NULL),
(6, 'Quos nesciunt blanditiis amet odio.', NULL, NULL),
(7, 'Ex doloremque consequuntur velit alias repellendus ullam.', NULL, NULL),
(8, 'Perspiciatis a quo beatae nobis et suscipit illo.', NULL, NULL),
(9, 'Maiores voluptate animi est enim totam.', NULL, NULL),
(10, 'Rerum expedita inventore nulla voluptates perferendis placeat.', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id`, `nama`, `umur`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Fitria Gilda Hastuti S.Pd', 40, NULL, '2020-01-21 01:51:23', NULL),
(3, 'Ana Mayasari S.Gz', 34, NULL, '2020-01-21 01:52:06', NULL),
(7, 'Cici Oliva Puspita', 37, NULL, NULL, NULL),
(8, 'Dartono Kusumo', 36, NULL, NULL, NULL),
(9, 'Hardi Asmadi Uwais S.Ked', 26, NULL, NULL, NULL),
(10, 'Gina Halimah', 39, NULL, NULL, NULL),
(11, 'Iriana Zulfa Nuraini', 34, NULL, NULL, NULL),
(12, 'Karman Irawan M.Farm', 29, NULL, NULL, NULL),
(13, 'Koko Simanjuntak', 38, NULL, NULL, NULL),
(14, 'Utama Wijaya', 35, NULL, NULL, NULL),
(15, 'Hardi Sihombing S.Gz', 26, NULL, NULL, NULL),
(16, 'Carub Uwais', 26, NULL, NULL, NULL),
(17, 'Bagya Latupono', 36, NULL, NULL, NULL),
(18, 'Jayadi Anggriawan', 31, NULL, NULL, NULL),
(19, 'Purwadi Megantara', 39, NULL, NULL, NULL),
(20, 'Diah Shania Widiastuti', 25, NULL, NULL, NULL),
(21, 'Tantri Hariyah S.Kom', 40, NULL, NULL, NULL),
(22, 'Kani Yuliana Andriani S.Ked', 37, NULL, NULL, NULL),
(23, 'Jayadi Halim', 28, NULL, NULL, NULL),
(24, 'Yance Jessica Winarsih S.H.', 26, NULL, NULL, NULL),
(25, 'Prasetyo Jabal Dabukke S.Pt', 30, NULL, NULL, NULL),
(26, 'Fitriani Maya Mardhiyah M.TI.', 29, NULL, NULL, NULL),
(27, 'Jindra Gunawan', 27, NULL, NULL, NULL),
(28, 'Darman Siregar', 27, NULL, NULL, NULL),
(29, 'Hendra Suryono', 33, NULL, NULL, NULL),
(30, 'Gantar Situmorang', 28, NULL, NULL, NULL),
(31, 'Johan Latupono', 26, NULL, NULL, NULL),
(32, 'Alika Yolanda S.Sos', 35, NULL, NULL, NULL),
(33, 'Ophelia Handayani', 38, NULL, NULL, NULL),
(34, 'Liman Bahuwirya Hardiansyah S.Sos', 35, NULL, NULL, NULL),
(35, 'Nadine Vanesa Rahayu M.Kom.', 25, NULL, NULL, NULL),
(36, 'Ulya Puspasari', 40, NULL, NULL, NULL),
(37, 'Victoria Syahrini Farida', 39, NULL, NULL, NULL),
(38, 'Pia Maryati', 25, NULL, NULL, NULL),
(39, 'Hartaka Eluh Natsir S.IP', 25, NULL, NULL, NULL),
(40, 'Ika Astuti', 37, NULL, NULL, NULL),
(41, 'Calista Titin Prastuti', 27, NULL, NULL, NULL),
(42, 'Ulva Kuswandari', 25, NULL, NULL, NULL),
(43, 'Sakura Fitria Hartati M.Ak', 36, NULL, NULL, NULL),
(44, 'Jayeng Prasetyo', 39, NULL, NULL, NULL),
(45, 'Jelita Belinda Anggraini S.T.', 36, NULL, NULL, NULL),
(46, 'Lurhur Damanik', 31, NULL, NULL, NULL),
(47, 'Irnanto Banara Setiawan', 29, NULL, NULL, NULL),
(48, 'Limar Maheswara', 30, NULL, NULL, NULL),
(49, 'Nadia Lintang Hasanah', 29, NULL, NULL, NULL),
(50, 'Samsul Iswahyudi', 30, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hadiah`
--

CREATE TABLE `hadiah` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_hadiah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `hadiah`
--

INSERT INTO `hadiah` (`id`, `nama_hadiah`, `created_at`, `updated_at`) VALUES
(1, 'Kulkas', NULL, NULL),
(2, 'Lemari', NULL, NULL),
(3, 'Rumah', NULL, NULL),
(4, 'Mobil', NULL, NULL),
(5, 'Sepeda Motor', NULL, NULL),
(6, 'Pulpen', NULL, NULL),
(7, 'Tas', NULL, NULL),
(8, 'Sepatu', NULL, NULL),
(9, 'Voucher', NULL, NULL),
(10, 'Mouse', NULL, NULL),
(11, 'Laptop', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `IDpegawai` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `umur` int(11) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`IDpegawai`, `nama`, `jabatan`, `umur`, `alamat`) VALUES
(1, 'Faisal', 'siswa', 16, 'Jl.Polowijen 2'),
(2, 'Diki Alfarabi Hadi', 'Staff IT', 26, 'Jl. Merak Putih'),
(4, 'Malas Ngoding', 'Programmer', 30, 'Jl. Cendrawasih nomor 31'),
(7, 'Joni', 'Web Designer', 25, 'Jl. Panglateh'),
(8, 'Elma Sudiati', 'quo', 38, 'Gg. Cikapayang No. 255, Sungai Penuh 32691, Riau'),
(9, 'Slamet Lega Rajata S.Farm', 'voluptatem', 32, 'Gg. Supono No. 84, Sawahlunto 47885, SulSel'),
(10, 'Jaya Naradi Situmorang', 'quasi', 33, 'Dk. Imam Bonjol No. 814, Palu 46518, SumUt'),
(11, 'Rendy Habibi S.Psi', 'sit', 37, 'Gg. Basuki No. 314, Administrasi Jakarta Pusat 73176, NTB'),
(12, 'Yahya Sinaga', 'enim', 26, 'Ki. Industri No. 238, Sungai Penuh 38002, SulSel'),
(13, 'Hesti Janet Hasanah S.Sos', 'est', 35, 'Dk. Wahidin Sudirohusodo No. 637, Surabaya 44801, Banten'),
(14, 'Sari Rahmi Melani', 'laborum', 36, 'Psr. Dipatiukur No. 227, Balikpapan 19234, SulTeng'),
(15, 'Clara Wahyuni', 'eveniet', 38, 'Jln. Otista No. 163, Dumai 91798, KalUt'),
(16, 'Dasa Jais Maheswara', 'esse', 32, 'Kpg. Radio No. 94, Padangpanjang 14989, Bali'),
(17, 'Viktor Prasasta', 'sunt', 27, 'Jln. BKR No. 694, Surakarta 95932, NTB'),
(18, 'Lurhur Damanik', 'nemo', 29, 'Psr. Salak No. 990, Bau-Bau 25079, SulSel'),
(19, 'Zelaya Nasyidah', 'sit', 29, 'Jr. Kali No. 589, Administrasi Jakarta Barat 96388, Gorontalo'),
(20, 'Oman Damanik', 'maiores', 28, 'Psr. Taman No. 461, Banjarbaru 37220, Maluku'),
(21, 'Lili Anggraini', 'id', 25, 'Jr. Baranang No. 631, Pariaman 57837, JaTim'),
(22, 'Harto Prabowo', 'quos', 38, 'Jln. Ki Hajar Dewantara No. 213, Tual 51023, Jambi'),
(23, 'Kanda Habibi', 'nam', 35, 'Kpg. Baan No. 69, Blitar 72288, Lampung'),
(24, 'Wani Prastuti', 'doloremque', 33, 'Gg. Bakau No. 67, Pagar Alam 78006, Papua'),
(25, 'Vero Natsir', 'illum', 34, 'Ds. Salak No. 391, Pontianak 80916, KalTeng'),
(26, 'Paris Hani Nuraini S.IP', 'quo', 39, 'Ds. Dahlia No. 744, Ambon 99599, KalTeng'),
(27, 'Padma Salimah Suartini S.H.', 'ab', 38, 'Ds. Bawal No. 241, Salatiga 42046, Papua'),
(28, 'Kasiran Pangeran Prasetyo', 'aut', 35, 'Ki. Fajar No. 272, Prabumulih 45913, Aceh'),
(29, 'Aslijan Sirait', 'repellendus', 25, 'Gg. Ujung No. 11, Pekanbaru 57006, MalUt'),
(30, 'Ira Nuraini', 'magnam', 36, 'Gg. Yohanes No. 441, Jambi 46510, SumSel'),
(31, 'Kiandra Puspita', 'enim', 40, 'Dk. Kali No. 33, Pontianak 12025, MalUt'),
(32, 'Harsaya Prayoga', 'esse', 25, 'Kpg. Dago No. 928, Kupang 92150, Bali'),
(33, 'Mala Lailasari', 'cupiditate', 25, 'Dk. Wahidin Sudirohusodo No. 13, Cirebon 44084, Bali'),
(34, 'Ayu Zizi Kuswandari', 'voluptas', 32, 'Psr. Laksamana No. 259, Batu 93531, KalSel'),
(35, 'Adika Wasita', 'cum', 29, 'Jr. Ki Hajar Dewantara No. 725, Sawahlunto 19536, Gorontalo'),
(36, 'Najib Omar Anggriawan', 'omnis', 25, 'Kpg. Suniaraja No. 917, Tanjung Pinang 37324, SumUt'),
(37, 'Edward Tomi Saptono M.M.', 'praesentium', 29, 'Dk. Sadang Serang No. 852, Surakarta 37423, SulTeng'),
(38, 'Ajimat Ardianto M.Kom.', 'excepturi', 40, 'Gg. Bakti No. 251, Parepare 48583, Maluku'),
(39, 'Carub Gamblang Prasasta S.H.', 'inventore', 34, 'Gg. Cikutra Barat No. 259, Gunungsitoli 25016, SumUt'),
(40, 'Dimaz Prabowo S.Gz', 'libero', 26, 'Ds. Baya Kali Bungur No. 472, Bitung 95442, Lampung'),
(41, 'Siti Farida', 'autem', 37, 'Dk. Hang No. 1, Bengkulu 71277, SumUt'),
(42, 'Uchita Astuti', 'recusandae', 40, 'Ki. Sutami No. 779, Pontianak 99497, JaTim'),
(43, 'Zalindra Ghaliyati Puspita S.E.I', 'saepe', 39, 'Ki. Flores No. 891, Bandar Lampung 35072, SulSel'),
(44, 'Respati Tampubolon', 'facere', 31, 'Jr. Bagas Pati No. 769, Bukittinggi 80941, SulTeng'),
(45, 'Zulaikha Puspita', 'quam', 40, 'Gg. Baan No. 59, Pematangsiantar 98370, KalBar'),
(46, 'Maya Andriani', 'voluptatibus', 39, 'Kpg. Warga No. 155, Payakumbuh 15521, Jambi'),
(47, 'Tantri Putri Namaga S.T.', 'voluptatem', 29, 'Kpg. Laswi No. 427, Banjarbaru 52446, KalUt'),
(48, 'Dimaz Rajasa M.M.', 'sit', 39, 'Gg. Madiun No. 340, Pontianak 29529, SulUt'),
(49, 'Lintang Lalita Astuti S.Psi', 'beatae', 33, 'Kpg. Baja No. 834, Gunungsitoli 25347, PapBar'),
(50, 'Sakura Widiastuti', 'exercitationem', 35, 'Dk. Cokroaminoto No. 844, Padangpanjang 88917, Gorontalo'),
(51, 'Laksana Hidayat', 'sunt', 40, 'Ds. Bakau Griya Utama No. 757, Bandar Lampung 42512, SumSel'),
(52, 'Faizah Kusmawati S.Ked', 'tempora', 37, 'Ds. Badak No. 423, Pangkal Pinang 76234, SumSel'),
(53, 'Tami Nilam Widiastuti', 'esse', 40, 'Psr. Bahagia No. 723, Jayapura 94256, Maluku'),
(54, 'Tina Maryati', 'est', 36, 'Jln. Lumban Tobing No. 182, Bau-Bau 47907, SumUt'),
(55, 'Enteng Habibi S.Pd', 'voluptate', 39, 'Jr. Achmad Yani No. 211, Tasikmalaya 38586, JaBar'),
(56, 'Waluyo Samosir', 'ipsum', 39, 'Ki. Badak No. 252, Sorong 37092, SulTeng'),
(57, 'Malika Eli Kusmawati', 'exercitationem', 32, 'Ds. Banda No. 618, Tanjung Pinang 93287, Gorontalo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai2`
--

CREATE TABLE `pegawai2` (
  `pegawai_id` int(11) NOT NULL,
  `pegawai_nama` varchar(50) NOT NULL,
  `pegawai_jabatan` varchar(20) NOT NULL,
  `pegawai_umur` int(11) NOT NULL,
  `pegawai_alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai2`
--

INSERT INTO `pegawai2` (`pegawai_id`, `pegawai_nama`, `pegawai_jabatan`, `pegawai_umur`, `pegawai_alamat`) VALUES
(1, 'Tantri Andriani M.Farm', 'quo', 31, 'Psr. Radio No. 851, Mataram 96581, KalBar'),
(2, 'Mursinin Budiman', 'ut', 31, 'Psr. Suprapto No. 281, Tomohon 39261, NTB'),
(3, 'Raina Kusmawati', 'unde', 31, 'Psr. Wahidin Sudirohusodo No. 275, Subulussalam 26173, NTB'),
(4, 'Rina Purwanti', 'in', 32, 'Kpg. Suryo No. 516, Subulussalam 33900, JaTeng'),
(5, 'Kamila Fujiati', 'iusto', 34, 'Gg. Gajah Mada No. 555, Bontang 69008, KalUt'),
(6, 'Wani Padmasari M.Kom.', 'quis', 29, 'Psr. Basmol Raya No. 550, Lubuklinggau 42008, SulUt'),
(7, 'Kardi Damanik', 'delectus', 25, 'Jln. Sampangan No. 561, Mojokerto 65635, NTT'),
(8, 'Ina Rahayu', 'accusamus', 39, 'Jln. Reksoninten No. 335, Tangerang Selatan 39285, Riau'),
(9, 'Putri Winarsih', 'ut', 40, 'Jln. Sutarjo No. 192, Administrasi Jakarta Timur 98456, KalUt'),
(10, 'Surya Pradipta', 'enim', 27, 'Ds. Juanda No. 292, Mojokerto 89386, KalTim'),
(11, 'Gaman Marbun', 'accusamus', 37, 'Dk. M.T. Haryono No. 685, Jambi 10131, Bali'),
(12, 'Karen Wastuti S.Pd', 'dignissimos', 40, 'Gg. Uluwatu No. 786, Bau-Bau 43363, NTB'),
(13, 'Vicky Maryati', 'velit', 31, 'Kpg. Rajawali Timur No. 430, Parepare 42927, SulBar'),
(14, 'Maryanto Lazuardi', 'et', 38, 'Psr. Umalas No. 195, Blitar 85132, KalTeng'),
(15, 'Mala Safitri S.Farm', 'veniam', 28, 'Gg. Abdul. Muis No. 618, Gunungsitoli 58981, DIY'),
(16, 'Luluh Marbun', 'soluta', 30, 'Jln. Qrisdoren No. 514, Serang 78182, JaBar'),
(17, 'Nurul Hasanah', 'facere', 27, 'Dk. Pasteur No. 788, Administrasi Jakarta Utara 16541, DIY'),
(18, 'Dacin Megantara', 'deserunt', 32, 'Kpg. Suniaraja No. 911, Padang 57277, SulSel'),
(19, 'Rika Anggraini', 'ex', 30, 'Gg. Tentara Pelajar No. 864, Jambi 57341, KalSel'),
(20, 'Kamaria Rahmawati M.TI.', 'sint', 37, 'Dk. Babadak No. 165, Gunungsitoli 80937, KalUt'),
(21, 'Lidya Juli Purnawati S.I.Kom', 'et', 29, 'Ki. Sumpah Pemuda No. 307, Banjarbaru 69302, KalUt'),
(22, 'Darimin Hakim', 'deserunt', 36, 'Ki. Basoka Raya No. 799, Langsa 98432, KalSel'),
(23, 'Cagak Pradana', 'illum', 25, 'Jln. Bakau No. 928, Palembang 12702, SulTra'),
(24, 'Ajeng Wulandari', 'dignissimos', 34, 'Gg. Villa No. 73, Surakarta 59136, NTB'),
(25, 'Hartana Wijaya', 'repellendus', 31, 'Jr. Pasirkoja No. 405, Kediri 39526, DIY'),
(26, 'Warji Pranawa Ramadan', 'debitis', 31, 'Jr. BKR No. 264, Bogor 74388, DKI'),
(27, 'Zahra Kuswandari', 'ratione', 25, 'Ds. Nakula No. 660, Sungai Penuh 26593, JaTim'),
(28, 'Abyasa Jasmani Iswahyudi', 'recusandae', 25, 'Ds. Bappenas No. 847, Depok 24506, SumBar'),
(29, 'Puput Siska Suartini M.Ak', 'dolorum', 40, 'Gg. Ters. Buah Batu No. 869, Tangerang Selatan 99144, Jambi'),
(30, 'Taswir Tirta Rajasa S.Pt', 'dolorem', 29, 'Kpg. Rajawali Barat No. 429, Ambon 36734, KalTeng'),
(31, 'Bagas Mustofa', 'consequatur', 27, 'Kpg. Dr. Junjunan No. 804, Administrasi Jakarta Timur 74094, Bali'),
(32, 'Nalar Gunarto S.Psi', 'tenetur', 33, 'Ki. Karel S. Tubun No. 343, Binjai 73782, SulTeng'),
(33, 'Kurnia Ardianto M.Kom.', 'cumque', 33, 'Kpg. Peta No. 512, Tangerang 24854, Banten'),
(34, 'Gaduh Situmorang', 'excepturi', 38, 'Dk. Jagakarsa No. 420, Malang 73188, Banten'),
(35, 'Ophelia Suartini', 'et', 33, 'Jln. Basudewo No. 426, Lubuklinggau 59008, SulSel'),
(36, 'Gadang Cengkal Rajata S.I.Kom', 'distinctio', 33, 'Jr. Dahlia No. 929, Cimahi 63259, SulTra'),
(37, 'Safina Rahmi Usamah S.I.Kom', 'tempora', 26, 'Jln. Otista No. 185, Bogor 40611, JaTim'),
(38, 'Kayla Kusmawati', 'sunt', 31, 'Gg. Radio No. 382, Banjarmasin 24840, Banten'),
(39, 'Siska Purwanti', 'iste', 34, 'Jr. Teuku Umar No. 708, Singkawang 96557, SulSel'),
(40, 'Sabrina Farida', 'sint', 34, 'Ds. Panjaitan No. 818, Dumai 63669, KalUt'),
(41, 'Laswi Megantara S.Kom', 'temporibus', 32, 'Ds. Pattimura No. 230, Padangpanjang 21316, SumUt'),
(42, 'Jane Uli Safitri M.Pd', 'ea', 40, 'Psr. Kartini No. 180, Parepare 65615, KalSel'),
(43, 'Novi Yuniar S.Gz', 'nam', 25, 'Dk. Rumah Sakit No. 16, Tasikmalaya 79276, KalUt'),
(44, 'Enteng Carub Pranowo S.H.', 'temporibus', 39, 'Ds. Gedebage Selatan No. 997, Palu 27212, NTT'),
(45, 'Koko Danu Utama S.Psi', 'accusantium', 27, 'Jln. Abdullah No. 739, Depok 80162, Aceh'),
(46, 'Gilang Cahyo Marpaung', 'delectus', 25, 'Ds. Laksamana No. 448, Bau-Bau 80238, KalBar'),
(47, 'Atmaja Balapati Damanik S.Ked', 'provident', 25, 'Psr. Babakan No. 713, Gorontalo 15091, SulTra'),
(48, 'Darmaji Mursinin Firgantoro', 'eum', 35, 'Ki. Moch. Yamin No. 134, Administrasi Jakarta Timur 70492, Riau'),
(49, 'Septi Laksita M.Ak', 'sed', 30, 'Kpg. Cikapayang No. 141, Pematangsiantar 95100, JaBar'),
(50, 'Violet Pratiwi', 'sapiente', 39, 'Jr. Wora Wari No. 903, Binjai 29852, KalBar'),
(51, 'Joni', 'Web Designer', 25, 'Jl. Panglateh'),
(52, 'Hartaka Rahman Saputra', 'cupiditate', 30, 'Jln. Suryo No. 75, Lhokseumawe 86580, SumSel'),
(53, 'Bakidin Sihombing', 'ipsam', 35, 'Ki. Baya Kali Bungur No. 861, Banjarmasin 96508, JaTim'),
(54, 'Daliman Dabukke S.Ked', 'odit', 32, 'Psr. Wahid No. 60, Subulussalam 63840, KalSel'),
(55, 'Unjani Andriani', 'perferendis', 33, 'Ds. Abdul Muis No. 336, Tangerang 14918, SumBar'),
(56, 'Koko Zulkarnain S.H.', 'sint', 33, 'Jr. Tangkuban Perahu No. 770, Kediri 44010, Aceh'),
(57, 'Victoria Lala Zulaika S.Psi', 'tempora', 33, 'Kpg. Bah Jaya No. 348, Administrasi Jakarta Selatan 68193, SulTra'),
(58, 'Wage Vero Haryanto', 'a', 31, 'Ki. Siliwangi No. 129, Singkawang 22964, BaBel'),
(59, 'Himawan Jono Pradana', 'sed', 33, 'Gg. Achmad No. 14, Bau-Bau 71560, Maluku'),
(60, 'Elon Timbul Wibisono S.Ked', 'consequatur', 29, 'Psr. Rajawali Barat No. 643, Tual 85949, SumSel'),
(61, 'Janet Maryati', 'soluta', 40, 'Gg. Teuku Umar No. 434, Depok 95476, KalSel'),
(62, 'Pia Yolanda', 'enim', 33, 'Jln. Padma No. 684, Tanjung Pinang 74731, KalTim'),
(63, 'Darmaji Maryadi M.TI.', 'quae', 33, 'Ds. HOS. Cjokroaminoto (Pasirkaliki) No. 850, Balikpapan 94154, BaBel'),
(64, 'Asirwada Suwarno', 'rerum', 29, 'Kpg. Suryo Pranoto No. 587, Ambon 40125, KepR'),
(65, 'Maras Habibi', 'natus', 37, 'Jr. Diponegoro No. 506, Lubuklinggau 43152, NTB'),
(66, 'Adika Wasita M.M.', 'eum', 38, 'Psr. Yosodipuro No. 483, Sibolga 43462, SumSel'),
(67, 'Melinda Hariyah', 'qui', 27, 'Psr. Antapani Lama No. 6, Kotamobagu 90192, JaTeng'),
(68, 'Limar Gunarto', 'velit', 36, 'Jr. Setiabudhi No. 503, Bekasi 96864, SumUt'),
(69, 'Xanana Saefullah', 'odio', 32, 'Dk. Rajiman No. 965, Gunungsitoli 60565, Lampung'),
(70, 'Dalima Palastri', 'exercitationem', 30, 'Kpg. Bah Jaya No. 950, Makassar 54477, KalBar'),
(71, 'Adikara Pradana', 'iure', 32, 'Ki. Banal No. 65, Jayapura 68437, Bali'),
(72, 'Emin Eman Siregar S.Sos', 'quis', 34, 'Ki. K.H. Maskur No. 968, Palangka Raya 56717, KalTeng'),
(73, 'Ratih Sudiati', 'maiores', 35, 'Gg. Sentot Alibasa No. 283, Administrasi Jakarta Selatan 46147, PapBar'),
(74, 'Vega Utama', 'sed', 32, 'Jr. Flores No. 992, Administrasi Jakarta Timur 32990, KalBar'),
(75, 'Mulya Dongoran S.Sos', 'perspiciatis', 29, 'Kpg. Baya Kali Bungur No. 216, Cimahi 14378, SumUt'),
(76, 'Laila Novitasari', 'autem', 25, 'Jr. Suryo Pranoto No. 433, Banjarbaru 87380, KalTeng'),
(77, 'Daruna Mandala', 'et', 31, 'Kpg. Yap Tjwan Bing No. 95, Pasuruan 69203, KalTim'),
(78, 'Lintang Nuraini', 'possimus', 33, 'Dk. Dewi Sartika No. 740, Yogyakarta 29461, SumUt'),
(79, 'Tirta Argono Zulkarnain', 'consequatur', 27, 'Kpg. Bakau No. 71, Pagar Alam 79996, NTT'),
(80, 'Dewi Nurdiyanti', 'voluptatem', 38, 'Ds. Gedebage Selatan No. 280, Blitar 90556, KalSel'),
(81, 'Betania Suryatmi', 'doloribus', 36, 'Ki. Babadak No. 899, Tasikmalaya 64136, KalBar'),
(82, 'Rachel Hariyah', 'nostrum', 33, 'Jr. Radio No. 558, Gorontalo 86287, MalUt'),
(83, 'Dartono Jarwa Prabowo S.IP', 'voluptatibus', 27, 'Dk. Bagas Pati No. 393, Sabang 93265, KalSel'),
(84, 'Ganep Daruna Prayoga S.Psi', 'harum', 32, 'Psr. Ciwastra No. 700, Bogor 71675, KalTim'),
(85, 'Samsul Darman Gunarto M.Kom.', 'rerum', 30, 'Ki. Adisumarmo No. 912, Pariaman 83247, Lampung'),
(86, 'Garda Irawan M.M.', 'ut', 27, 'Ki. Hang No. 610, Padang 63241, KalTim'),
(87, 'Jagaraga Radit Januar S.Kom', 'autem', 27, 'Kpg. Kusmanto No. 688, Langsa 38152, KalTeng'),
(88, 'Argono Prakasa', 'molestiae', 25, 'Ds. Barat No. 745, Banjarbaru 87863, MalUt'),
(89, 'Atmaja Jailani', 'ab', 33, 'Ki. Tubagus Ismail No. 117, Bandung 87548, BaBel'),
(90, 'Kezia Icha Yulianti S.I.Kom', 'veniam', 26, 'Dk. PHH. Mustofa No. 742, Kupang 64592, NTT'),
(91, 'Atma Rajasa', 'saepe', 36, 'Jr. Baranang Siang Indah No. 584, Administrasi Jakarta Selatan 24095, Jambi'),
(92, 'Hartaka Kenzie Saputra S.Sos', 'sint', 36, 'Kpg. Industri No. 441, Salatiga 53076, SumUt'),
(93, 'Raisa Ida Farida M.M.', 'accusamus', 37, 'Jln. Bambu No. 225, Gorontalo 64344, NTB'),
(94, 'Dipa Hidayat', 'est', 33, 'Gg. S. Parman No. 893, Administrasi Jakarta Timur 35636, Gorontalo'),
(95, 'Cahyono Hairyanto Saefullah', 'ipsum', 29, 'Psr. Daan No. 627, Administrasi Jakarta Pusat 50559, Banten'),
(96, 'Saka Lazuardi', 'placeat', 35, 'Ki. Tubagus Ismail No. 758, Banjarbaru 48681, Aceh'),
(97, 'Victoria Ajeng Hastuti S.H.', 'quas', 25, 'Ki. Bakti No. 282, Pasuruan 19890, SulUt'),
(98, 'Puspa Samiah Kuswandari', 'rerum', 39, 'Ki. Eka No. 404, Gorontalo 86871, Bengkulu'),
(99, 'Rini Lailasari S.Kom', 'voluptas', 30, 'Psr. Moch. Ramdan No. 281, Solok 68371, NTB'),
(100, 'Victoria Melani', 'veniam', 29, 'Ds. Baung No. 788, Bogor 63923, Maluku'),
(101, 'Dina Yuniar', 'molestias', 26, 'Jln. Ir. H. Juanda No. 48, Administrasi Jakarta Selatan 38071, Aceh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai_eloquent`
--

CREATE TABLE `pegawai_eloquent` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pegawai_eloquent`
--

INSERT INTO `pegawai_eloquent` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Raisa Suci Dalam Debu', 'Kene kene ae', NULL, '2020-01-21 00:49:58'),
(4, 'Jamal Uwais', 'Ki. Basket No. 63, Ambon 39363, KalUt', NULL, NULL),
(5, 'Nabila Uyainah', 'Ki. Badak No. 351, Padangsidempuan 25170, Aceh', NULL, NULL),
(6, 'Satya Manullang', 'Dk. Sugiyopranoto No. 954, Langsa 77615, BaBel', NULL, NULL),
(7, 'Kasim Budiman', 'Jln. Banal No. 219, Tangerang 22457, Papua', NULL, NULL),
(8, 'Agnes Hana Winarsih M.Kom.', 'Ki. Padang No. 190, Pontianak 81244, DIY', NULL, NULL),
(9, 'Among Joko Marpaung M.Kom.', 'Ds. Supomo No. 588, Bau-Bau 70894, SumBar', NULL, NULL),
(10, 'Baktianto Kusumo S.E.', 'Kpg. Casablanca No. 773, Balikpapan 84946, Jambi', NULL, NULL),
(11, 'Faisal Adi Prayugo', 'Polowijen 2', '2020-01-21 00:35:15', '2020-01-21 00:35:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Padmi Kamila Hassanah S.Farm', NULL, NULL),
(2, 'Julia Oktaviani', NULL, NULL),
(3, 'Darmana Sitompul', NULL, NULL),
(4, 'Naradi Nainggolan', NULL, NULL),
(5, 'Tedi Winarno', NULL, NULL),
(6, 'Ulya Yani Permata S.Pt', NULL, NULL),
(7, 'Maida Uyainah', NULL, NULL),
(8, 'Putri Dian Nasyidah M.Pd', NULL, NULL),
(9, 'Lantar Uwais', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tags`
--

INSERT INTO `tags` (`id`, `tag`, `article_id`, `created_at`, `updated_at`) VALUES
(1, 'dolores', 2, NULL, NULL),
(2, 'culpa', 3, NULL, NULL),
(3, 'sit', 4, NULL, NULL),
(4, 'quasi', 3, NULL, NULL),
(5, 'inventore', 5, NULL, NULL),
(6, 'ut', 7, NULL, NULL),
(7, 'quisquam', 5, NULL, NULL),
(8, 'fugiat', 7, NULL, NULL),
(9, 'perspiciatis', 5, NULL, NULL),
(10, 'voluptatem', 3, NULL, NULL),
(11, 'non', 2, NULL, NULL),
(12, 'ducimus', 5, NULL, NULL),
(13, 'tempora', 4, NULL, NULL),
(14, 'voluptatem', 10, NULL, NULL),
(15, 'nisi', 3, NULL, NULL),
(16, 'exercitationem', 10, NULL, NULL),
(17, 'sed', 2, NULL, NULL),
(18, 'tempora', 6, NULL, NULL),
(19, 'laudantium', 7, NULL, NULL),
(20, 'a', 6, NULL, NULL),
(21, 'consequuntur', 9, NULL, NULL),
(22, 'omnis', 1, NULL, NULL),
(23, 'rerum', 9, NULL, NULL),
(24, 'ut', 1, NULL, NULL),
(25, 'amet', 10, NULL, NULL),
(26, 'atque', 9, NULL, NULL),
(27, 'at', 4, NULL, NULL),
(28, 'hic', 3, NULL, NULL),
(29, 'itaque', 1, NULL, NULL),
(30, 'quia', 9, NULL, NULL),
(31, 'consequatur', 8, NULL, NULL),
(32, 'non', 9, NULL, NULL),
(33, 'explicabo', 10, NULL, NULL),
(34, 'eos', 6, NULL, NULL),
(35, 'eveniet', 5, NULL, NULL),
(36, 'dolor', 10, NULL, NULL),
(37, 'magnam', 10, NULL, NULL),
(38, 'aut', 1, NULL, NULL),
(39, 'et', 6, NULL, NULL),
(40, 'ut', 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `telepon`
--

CREATE TABLE `telepon` (
  `id` int(10) UNSIGNED NOT NULL,
  `nomor_telepon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengguna_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `telepon`
--

INSERT INTO `telepon` (`id`, `nomor_telepon`, `pengguna_id`, `created_at`, `updated_at`) VALUES
(1, '(+62) 878 0989 834', 1, NULL, NULL),
(2, '(+62) 509 9868 0557', 2, NULL, NULL),
(3, '023 9503 4379', 3, NULL, NULL),
(4, '(+62) 24 1120 052', 4, NULL, NULL),
(5, '0535 3676 2454', 5, NULL, NULL),
(6, '0614 0945 4128', 6, NULL, NULL),
(7, '0460 8541 5478', 7, NULL, NULL),
(8, '(+62) 713 5497 976', 8, NULL, NULL),
(9, '(+62) 653 4057 294', 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `anggota_hadiah`
--
ALTER TABLE `anggota_hadiah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hadiah`
--
ALTER TABLE `hadiah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`IDpegawai`);

--
-- Indeks untuk tabel `pegawai2`
--
ALTER TABLE `pegawai2`
  ADD PRIMARY KEY (`pegawai_id`);

--
-- Indeks untuk tabel `pegawai_eloquent`
--
ALTER TABLE `pegawai_eloquent`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `telepon`
--
ALTER TABLE `telepon`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `anggota_hadiah`
--
ALTER TABLE `anggota_hadiah`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `hadiah`
--
ALTER TABLE `hadiah`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `IDpegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `pegawai2`
--
ALTER TABLE `pegawai2`
  MODIFY `pegawai_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT untuk tabel `pegawai_eloquent`
--
ALTER TABLE `pegawai_eloquent`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `telepon`
--
ALTER TABLE `telepon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
