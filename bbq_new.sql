-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 25 Apr 2024 pada 08.50
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbq_new`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int NOT NULL,
  `nama_dosen` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nama_dosen`) VALUES
(1, 'Ahmad Iqbal, M. Ag'),
(8, 'Rizal Taufiq, S.Ag,. M.Ag'),
(9, 'M. Asgaff Aznan Siregar, S.H, M.H');

-- --------------------------------------------------------

--
-- Struktur dari tabel `info`
--

CREATE TABLE `info` (
  `id_info` int NOT NULL,
  `gelombang` int DEFAULT NULL,
  `tahun_ajar` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `masa_daftar` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status_pendaftaran` int DEFAULT '1',
  `biaya` int DEFAULT NULL,
  `wa_konfirmasi` varchar(55) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mulai_kbm` varchar(55) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `launching` varchar(55) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mabit` varchar(55) COLLATE utf8mb4_general_ci NOT NULL,
  `jalasah` varchar(55) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `talkshow` varchar(55) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cp1` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_cp1` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cp2` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_cp2` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pamflet` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `info`
--

INSERT INTO `info` (`id_info`, `gelombang`, `tahun_ajar`, `masa_daftar`, `status_pendaftaran`, `biaya`, `wa_konfirmasi`, `mulai_kbm`, `launching`, `mabit`, `jalasah`, `talkshow`, `cp1`, `nama_cp1`, `cp2`, `nama_cp2`, `pamflet`, `deskripsi`) VALUES
(1, 2, '2022/2023', '01 - 08 Oktober 2022', 0, 60, '82179706078', '2022-10-10', '2022-10-23', '2022-11-06', '2022-11-06', '2023-01-30', '85266272440', 'Bagus ', '82184697197', 'Yulistiani', 'arrahmanteknokrat_310953354_512778924002707_320370919775952814_n.jfif', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_tutor`
--

CREATE TABLE `jadwal_tutor` (
  `id_jadwal` int NOT NULL,
  `id_tutor` int NOT NULL,
  `waktu_id` int NOT NULL,
  `gel_jadwal` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jadwal_tutor`
--

INSERT INTO `jadwal_tutor` (`id_jadwal`, `id_tutor`, `waktu_id`, `gel_jadwal`) VALUES
(99, 98, 15, 1),
(100, 89, 12, 1),
(101, 97, 19, 1),
(102, 96, 29, 1),
(104, 95, 26, 1),
(106, 101, 37, 1),
(107, 107, 8, 2),
(109, 104, 25, 2),
(110, 106, 37, 2),
(111, 106, 19, 2),
(112, 91, 13, 2),
(113, 105, 18, 2),
(114, 108, 26, 2),
(115, 95, 12, 2),
(116, 96, 5, 2),
(117, 110, 37, 2),
(118, 111, 35, 2),
(119, 100, 8, 2),
(120, 100, 23, 2),
(122, 112, 20, 2),
(123, 113, 20, 2),
(124, 119, 13, 2),
(125, 118, 37, 2),
(126, 117, 24, 2),
(127, 120, 11, 2),
(128, 116, 5, 2),
(129, 115, 9, 2),
(130, 114, 32, 2),
(131, 101, 28, 2),
(132, 98, 13, 2),
(133, 97, 35, 2),
(134, 121, 39, 2),
(135, 122, 23, 2),
(136, 123, 17, 2),
(137, 125, 38, 2),
(138, 97, 39, 2),
(139, 109, 38, 2),
(140, 100, 39, 2),
(141, 94, 7, 2),
(142, 126, 29, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` char(4) COLLATE utf8mb4_general_ci NOT NULL,
  `kode_jurusan` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_jurusan` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `kode_jurusan`, `nama_jurusan`) VALUES
('111', 'Sasing', 'Satra Inggris\r'),
('112', 'PMat', 'Pendidikan Matematika'),
('113', 'PBI', 'Pendidikan Bahasa Inggris\r'),
('114', 'PO', 'Pendidikan Olahraga\r'),
('231', 'SIA', 'Sistem Informasi Akuntansi\r'),
('311', 'SI', 'Sistem Informasi\r'),
('312', 'IF', 'Informatika\r'),
('313', 'TI', 'Teknologi Informasi\r'),
('315', 'TE', 'Teknik Elektro\r'),
('316', 'TK', 'Teknik Komputer\r'),
('317', 'TS', 'Teknik Sipil\r'),
('411', 'MNJ', 'Manajemen\r'),
('412', 'AKT', 'Akuntansi\r');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_kegiatan` int NOT NULL,
  `nama_kegiatan` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci,
  `foto_kegiatan` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kegiatan`
--

INSERT INTO `kegiatan` (`id_kegiatan`, `nama_kegiatan`, `deskripsi`, `foto_kegiatan`) VALUES
(9, 'Launching BBQ', 'Pembukaan BBQ merupakan kegiatan rutin yang diadakan  setiap tahunnya. Pelaksanaan acara bertujuan untuk meningkatkan kecintaan mahasiswa muslim terhadap Islam sekaligus mengamalkannya dalam berbagai aspek kehidupan berbangsa dan bernegara. Selain itu juga untuk memotivasi para mahasiswa muslim mempelajari dan memperbaiki bacaan Al-Qur’an.', '6885bd5a-b9b8-4d00-80f0-b3476c483b5f.jfif'),
(11, 'Mabit', 'Malam Bina Taqwa  merupakan salah satu sarana tarbiyah untuk melembutkan hati, membina ruhiyah, membersihkan jiwa dan juga membiasakan fisik untuk beribadah. Beribadah yang dimaksud di sini adalah shalat tahajud, dzikir, tafakkur dan tadabbur.', 'mabit_4.png'),
(12, 'Jalasah', 'Jalasah Ruhiah merupakan kegiatan yang memiliki momentum yang tepat dalam membentuk pribadi-pribadi yang berakhlakul karimah sesuai dengan ajaran Nabi Muhammad SAW. Kegiatan jalasah ruhiah ini diharapkan dapat memberikan secercah pengaruh positif bagi perkembangan kualitas serta kuantitas belajar dalam mewujudkan tujuan dan cita-cita', 'jalasah_1.jfif'),
(13, 'Save Development Program', 'Kegiatan penutup KBM BBQ sekaligus memotivasi para mahasiswa agar terus  melanjutkan dengan mengikuti  belajar Al-Qur\'an. Kiranya melalui BBQ penutupan SDP ini, mahasiswa semakin dikuatkan untuk terus melanjutkan dan bisa mengamalkan Al-Qur\'an dalam kehidupan sehari-hari.', '13a29c2f-dda9-4014-b065-13395d2ff663.jfif'),
(14, 'Gebyar Ramadhan', 'Gebyar Ramadhan adalah sebuah kegiatan dalam rangka menyemarakkan bulan Suci Ramadhan. Gebyar ramadhan diramaikan dengan berbagai kegiatan lomba yang ada didalamnya, yang diikuti oleh praktikkan BBQ dan juga mahasiswa Universitas Teknokrat Indonesia', 'gs.jfif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int NOT NULL,
  `kelas` varchar(6) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kelas`) VALUES
(1, 'A\r'),
(2, 'B\r'),
(3, 'C\r'),
(4, 'D\r'),
(15, 'Dx'),
(5, 'E\r'),
(16, 'Ex'),
(6, 'F\r'),
(17, 'Fx'),
(7, 'G\r'),
(12, 'GAB 1\r'),
(13, 'GAB 2\r'),
(14, 'GAB 3\r'),
(8, 'H\r'),
(18, 'Hx'),
(9, 'X1\r'),
(10, 'X2\r'),
(11, 'X3\r');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelompok_kbm`
--

CREATE TABLE `kelompok_kbm` (
  `id_kelompok` int NOT NULL,
  `jadwal_id` int NOT NULL,
  `peserta_id` int NOT NULL,
  `p1` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p2` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p3` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p4` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p5` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p6` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p7` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p8` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p9` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p10` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p11` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p12` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kehadiran` float DEFAULT NULL,
  `mutabaah` float DEFAULT NULL,
  `uts` float DEFAULT NULL,
  `kegiatan_wajib` float DEFAULT NULL,
  `wudhu` float DEFAULT NULL,
  `sholat` float DEFAULT NULL,
  `tilawah` float DEFAULT NULL,
  `uas_tertulis` float DEFAULT NULL,
  `pembuat` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `absen_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kelompok_kbm`
--

INSERT INTO `kelompok_kbm` (`id_kelompok`, `jadwal_id`, `peserta_id`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`, `p7`, `p8`, `p9`, `p10`, `p11`, `p12`, `kehadiran`, `mutabaah`, `uts`, `kegiatan_wajib`, `wudhu`, `sholat`, `tilawah`, `uas_tertulis`, `pembuat`, `created_at`, `absen_at`) VALUES
(951, 111, 720, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 90, 85, 90, 85, 85, 70, 80, 90, NULL, '2023-02-02 11:57:39', NULL),
(954, 111, 886, 'Hadir', 'Hadir', '', '', '', '', '', '', '', '', '', '', 85, 85, 90, 85, 60, 80, 85, 90, NULL, '2023-02-02 12:06:18', '2022-11-09 13:21:42'),
(955, 111, 896, 'Hadir', '', '', '', '', '', '', '', '', '', '', '', 85, 85, 90, 85, 70, 70, 50, 90, NULL, '2023-02-02 12:06:06', '2022-11-02 15:27:40'),
(956, 109, 821, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Izin', 'Izin', 95, 89, 85, 80, 90, 91, 90, 97, NULL, '2023-01-24 09:51:29', '2023-01-19 18:20:34'),
(957, 109, 772, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Izin', 'Izin', 95, 93, 95, 80, 90, 90, 92, 89, NULL, '2023-01-24 09:45:44', '2023-01-18 09:55:05'),
(958, 115, 783, 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', '', '', '', '', 85, 85, 90, 90, 95, 90, 90, 90, NULL, '2023-01-26 22:50:21', '2022-12-22 14:34:00'),
(960, 115, 1044, 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', '', '', '', '', '', 85, 85, 85, 90, 90, 90, 90, 90, NULL, '2023-01-26 22:50:26', '2022-12-22 14:34:23'),
(965, 115, 1020, 'Hadir', 'Hadir', 'Izin', 'Hadir', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-01-26 22:51:15', '2022-11-24 14:48:27'),
(966, 115, 937, '', '', '', 'Hadir', 'Izin', 'Hadir', '', '', '', '', '', '', 85, 85, 85, 90, 85, 85, 85, 80, NULL, '2023-01-26 22:50:27', '2022-12-08 14:46:02'),
(967, 115, 782, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', '', '', '', 90, 85, 90, 90, 95, 90, 90, 90, NULL, '2023-01-26 22:50:28', '2022-12-22 14:34:38'),
(968, 115, 972, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', '', '', '', '', '', 85, 85, 90, 90, 90, 90, 90, 85, NULL, '2023-01-26 22:50:29', '2022-12-08 14:46:29'),
(969, 115, 692, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', '', '', '', '', 95, 95, 90, 90, 90, 90, 90, 90, NULL, '2023-01-26 22:50:41', '2022-12-22 14:34:50'),
(970, 115, 694, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', '', '', '', '', 90, 95, 90, 90, 95, 90, 90, 90, NULL, '2023-01-26 22:50:40', '2022-12-22 14:35:03'),
(971, 115, 696, 'Hadir', 'Alpa', 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', '', '', '', '', '', 85, 95, 90, 90, 90, 90, 90, 85, NULL, '2023-01-26 22:50:40', '2022-12-08 14:47:05'),
(973, 115, 974, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', '', '', '', '', '', 85, 85, 95, 90, 90, 90, 90, 85, NULL, '2023-01-26 22:50:39', '2022-12-08 14:47:16'),
(974, 115, 1022, 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', '', '', '', '', '', '', 85, 85, 90, 90, 85, 85, 85, 85, NULL, '2023-01-26 22:50:39', '2022-12-08 14:47:28'),
(975, 109, 693, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 100, 89, 100, 85, 91, 92, 91, 100, NULL, '2023-01-24 09:45:34', '2023-01-18 09:16:13'),
(976, 109, 702, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 100, 95, 100, 85, 90, 91, 90, 100, NULL, '2023-01-24 09:46:07', '2023-01-19 18:19:59'),
(977, 109, 703, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 100, 89, 95, 88, 90, 90, 90, 100, NULL, '2023-01-24 09:46:24', '2023-01-18 09:16:53'),
(978, 109, 791, 'Hadir', '', '', '', '', '', '', '', '', '', '', '', 93, 89, 100, 80, 89, 92, 88, 90, NULL, '2023-01-24 09:50:52', '2022-10-28 11:55:06'),
(979, 109, 793, 'Hadir', '', '', '', '', '', '', '', '', '', '', '', 93, 89, 100, 80, 89, 91, 90, 90, NULL, '2023-01-24 09:51:00', '2022-10-28 11:55:20'),
(980, 109, 939, 'Hadir', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-02-02 12:13:16', '2023-01-18 09:17:35'),
(981, 109, 1055, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 90, 89, 90, 77, 85, 91, 89, 90, NULL, '2023-01-24 09:48:19', NULL),
(982, 109, 1050, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 90, 89, 80, 77, 50, 50, 50, 50, NULL, '2023-02-02 12:13:47', NULL),
(983, 109, 773, 'Hadir', '', '', '', '', '', '', '', '', '', '', '', 90, 89, 90, 80, 89, 90, 90, 89, NULL, '2023-01-24 09:48:42', '2022-10-28 11:54:47'),
(984, 109, 897, 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Izin', 99, 93, 97, 85, 90, 91, 92, 90, NULL, '2023-01-24 09:48:56', '2023-01-18 09:52:24'),
(993, 112, 849, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Izin', 'Izin', 85, 90, 98, 90, 100, 100, 90, 100, NULL, '2023-02-02 10:58:40', '2023-02-01 19:53:15'),
(994, 112, 921, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 90, 87, 96, 85, 100, 100, 85, 90, NULL, '2023-02-02 10:58:17', '2023-02-01 20:21:01'),
(995, 112, 987, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Izin', 'Hadir', 'Hadir', 'Izin', 85, 85, 95, 90, 100, 100, 87, 93, NULL, '2023-02-02 11:01:17', '2023-02-01 19:58:51'),
(996, 112, 920, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 90, 85, 95, 90, 100, 100, 90, 90, NULL, '2023-02-02 12:10:47', '2023-02-01 19:59:23'),
(998, 112, 970, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 95, 90, 95, 93, 100, 100, 92, 100, NULL, '2023-02-02 10:59:30', '2023-02-01 19:53:54'),
(999, 112, 795, 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Izin', 'Izin', 80, 80, 95, 80, 80, 80, 80, 90, NULL, '2023-02-02 12:10:04', '2023-02-01 20:18:29'),
(1000, 112, 796, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Izin', 'Hadir', 90, 90, 95, 90, 100, 100, 90, 93, NULL, '2023-02-02 12:00:41', '2023-02-01 19:54:29'),
(1001, 112, 808, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 95, 87, 95, 90, 100, 100, 87, 97, NULL, '2023-02-02 12:05:14', '2023-02-01 20:21:36'),
(1002, 112, 785, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 100, 90, 80, 90, 95, 100, 89, 92, NULL, '2023-02-02 11:22:07', '2023-02-01 20:22:08'),
(1003, 112, 810, 'Hadir', 'Hadir', 'Izin', 'Izin', 'Hadir', 'Hadir', 'Izin', 'Izin', 'Hadir', 'Izin', 'Hadir', 'Hadir', 80, 80, 80, 75, 90, 90, 80, 87, NULL, '2023-02-02 12:07:11', '2023-02-01 20:22:52'),
(1004, 112, 811, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Izin', 'Izin', 'Hadir', 'Hadir', 'Hadir', 85, 85, 85, 80, 80, 85, 80, 90, NULL, '2023-02-02 12:02:03', '2023-02-01 20:24:36'),
(1005, 112, 812, 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Izin', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 85, 78, 85, 75, 80, 80, 80, 90, NULL, '2023-02-02 12:08:51', '2023-02-01 20:25:19'),
(1006, 116, 722, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 100, 70, 80, 80, 95, 90, 80, 90, NULL, '2023-01-20 09:01:49', '2023-01-20 07:59:44'),
(1007, 116, 723, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 100, 70, 80, 80, 90, 90, 60, 80, NULL, '2023-01-20 09:02:10', '2023-01-20 07:59:54'),
(1008, 116, 1033, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Alpa', '', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 98, 70, 80, 70, 95, 90, 90, 100, NULL, '2023-01-20 09:02:27', '2023-01-20 08:19:39'),
(1009, 116, 1025, 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', '', 'Hadir', 'Izin', 'Izin', 'Hadir', 'Hadir', 'Hadir', 90, 70, 50, 80, 90, 90, 70, 70, NULL, '2023-01-20 09:02:37', '2023-01-20 08:20:01'),
(1010, 116, 960, 'Hadir', 'Alpa', 'Alpa', 'Alpa', 'Alpa', '', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 2, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-01-20 08:32:19', '2023-01-20 08:20:17'),
(1011, 116, 1010, 'Alpa', 'Hadir', 'Alpa', 'Hadir', 'Alpa', '', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 2, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-01-20 08:32:27', '2023-01-20 08:20:41'),
(1012, 116, 712, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 100, 70, 50, 80, 90, 85, 75, 45, NULL, '2023-01-20 09:03:00', '2023-01-20 08:24:38'),
(1013, 116, 814, 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Alpa', '', 'Hadir', 'Alpa', 'Alpa', 'Hadir', 'Hadir', 'Hadir', 85, 70, 80, 70, 85, 90, 95, 85, NULL, '2023-01-20 09:03:10', '2023-01-20 08:24:52'),
(1014, 116, 711, 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', '', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 98, 70, 70, 90, 100, 90, 95, 80, NULL, '2023-01-20 09:03:20', '2023-01-20 08:25:04'),
(1015, 116, 713, 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Izin', '', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 100, 70, 72, 95, 90, 85, 80, 85, NULL, '2023-01-20 08:42:52', '2023-01-20 08:25:16'),
(1016, 116, 724, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 100, 70, 84, 80, 98, 99, 95, 100, NULL, '2023-01-20 08:44:25', '2023-01-20 08:25:27'),
(1017, 116, 732, 'Hadir', 'Hadir', 'Izin', 'Alpa', 'Hadir', '', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 98, 70, 70, 90, 95, 90, 75, 85, NULL, '2023-01-20 09:03:33', '2023-01-20 08:25:38'),
(1034, 113, 1026, 'Izin', 'Alpa', 'Alpa', 'Izin', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-01-14 16:39:49', '2023-01-22 15:24:21'),
(1035, 113, 1059, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', '', 90, 95, 85, 90, 90, 85, 85, 95, NULL, '2023-01-22 18:19:22', '2023-01-22 15:43:24'),
(1036, 113, 697, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', '', 90, 95, 100, 90, 90, 85, 90, 90, NULL, '2023-01-22 18:21:12', '2023-01-22 15:42:08'),
(1037, 113, 708, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', '', 90, 90, 95, 90, 90, 85, 90, 90, NULL, '2023-01-22 18:23:40', '2023-01-22 15:28:57'),
(1038, 113, 710, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', '', 90, 80, 100, 90, 90, 85, 80, 90, NULL, '2023-01-22 18:31:02', '2023-01-22 15:30:01'),
(1039, 113, 728, 'Izin', 'Alpa', 'Izin', 'Hadir', 'Hadir', 'Alpa', 'Izin', 'Hadir', 'Alpa', 'Alpa', 'Hadir', '', 75, 75, 85, 80, 80, 85, 80, 95, NULL, '2023-01-22 18:30:49', '2023-01-22 15:43:52'),
(1040, 113, 787, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', '', 90, 90, 100, 90, 90, 85, 90, 90, NULL, '2023-01-22 18:33:57', '2023-01-22 15:43:42'),
(1041, 113, 788, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', '', 90, 85, 100, 90, 90, 85, 80, 90, NULL, '2023-01-22 18:34:09', '2023-01-22 15:42:53'),
(1042, 113, 789, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', '', 85, 85, 100, 90, 90, 85, 80, 90, NULL, '2023-01-22 18:35:05', '2023-01-22 15:46:41'),
(1043, 113, 790, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', '', 90, 95, 100, 90, 90, 85, 85, 90, NULL, '2023-01-22 18:38:27', '2023-01-22 15:50:42'),
(1044, 113, 738, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', '', 90, 85, 100, 90, 90, 85, 85, 100, NULL, '2023-01-22 20:43:11', '2023-01-22 15:52:01'),
(1045, 113, 765, 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Izin', 'Hadir', 'Izin', 'Hadir', 'Alpa', 'Alpa', 'Hadir', '', 85, 80, 90, 80, 90, 85, 80, 90, NULL, '2023-01-22 20:43:37', '2023-01-22 15:49:50'),
(1046, 107, 1011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 10, 0, 0, 0, 0, NULL, '2023-02-02 14:27:49', NULL),
(1056, 118, 1000, 'Hadir', 'Izin', 'Hadir', 'Izin', 'Izin', 'Izin', 'Izin', 'Izin', '', '', '', '', 80, 50, 0, 50, 90, 90, 85, 50, NULL, '2023-02-01 11:01:14', '2022-12-17 10:18:35'),
(1061, 118, 938, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 10, 0, 20, 90, 90, 85, 0, NULL, '2023-02-01 11:01:19', NULL),
(1062, 118, 946, '', '', '', '', '', '', '', 'Alpa', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-02-01 11:01:22', '2022-12-17 10:34:50'),
(1063, 118, 1014, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Izin', 'Hadir', '', '', '', '', 90, 70, 90, 20, 90, 90, 85, 50, NULL, '2023-02-01 11:01:27', '2022-12-17 10:31:16'),
(1064, 118, 1061, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', '', '', '', '', 90, 90, 90, 85, 90, 90, 85, 85, NULL, '2023-02-01 11:01:32', '2022-12-17 10:31:20'),
(1065, 117, 832, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 87, 86, 86, 85, 85, 86, 85, 88, NULL, '2023-02-02 19:43:14', NULL),
(1066, 117, 841, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 85, 80, 82, 82, 83, 85, 82, 81, NULL, '2023-02-02 19:43:52', NULL),
(1067, 117, 912, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 85, 80, 83, 82, 82, 85, 84, 70, NULL, '2023-02-02 19:44:24', NULL),
(1068, 117, 914, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 80, 82, 80, 80, 82, 83, 80, 67, NULL, '2023-02-02 19:45:05', NULL),
(1069, 117, 805, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 80, 80, 82, 80, 82, 82, 82, 89, NULL, '2023-02-02 19:46:09', NULL),
(1070, 117, 923, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 82, 83, 84, 80, 82, 82, 87, 87, NULL, '2023-02-02 19:46:51', NULL),
(1071, 117, 1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 87, 80, 86, 84, 85, 82, 82, 96, NULL, '2023-02-02 19:47:45', NULL),
(1072, 117, 1005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86, 80, 85, 83, 83, 84, 86, 83, NULL, '2023-02-02 19:52:49', NULL),
(1073, 117, 1051, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86, 80, 84, 84, 83, 83, 83, 92, NULL, '2023-02-02 19:52:03', NULL),
(1074, 117, 823, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 82, 80, 82, 83, 82, 84, 80, 75, NULL, '2023-02-02 19:51:03', NULL),
(1075, 117, 825, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 83, 80, 80, 84, 80, 80, 80, 75, NULL, '2023-02-02 19:50:11', NULL),
(1076, 117, 828, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 82, 82, 80, 83, 82, 82, 82, 85, NULL, '2023-02-02 19:48:51', NULL),
(1077, 117, 835, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 85, 85, 86, 86, 85, 85, 86, 68, NULL, '2023-01-13 05:30:50', NULL),
(1078, 111, 786, 'Hadir', '', '', '', '', '', '', '', '', '', '', '', 90, 85, 90, 85, 80, 70, 80, 90, NULL, '2023-02-02 12:07:53', '2022-11-02 15:27:46'),
(1079, 111, 822, 'Hadir', '', '', '', '', '', '', '', '', '', '', '', 90, 85, 90, 85, 75, 70, 60, 90, NULL, '2023-02-02 12:08:43', '2022-11-02 15:27:54'),
(1085, 120, 1058, 'Hadir', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', '', '', '', '', 20, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-01-31 22:07:36', '2023-01-05 09:38:48'),
(1086, 120, 866, 'Hadir', 'Alpa', 'Hadir', 'Hadir', 'Alpa', 'Alpa', 'Alpa', 'Alpa', '', '', '', '', 60, 60, 0, 80, 0, 75, 75, 50, NULL, '2023-01-31 21:56:32', '2023-01-05 09:38:57'),
(1087, 120, 967, 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Alpa', '', '', '', '', 80, 80, 0, 80, 0, 80, 70, 50, NULL, '2023-01-31 21:58:20', '2023-01-05 09:39:13'),
(1088, 120, 968, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', '', '', '', '', 80, 80, 80, 80, 100, 85, 80, 80, NULL, '2023-02-02 09:28:53', '2023-01-31 21:57:11'),
(1089, 120, 969, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', '', '', '', '', 80, 80, 100, 80, 80, 85, 70, 80, NULL, '2023-02-02 09:29:27', '2023-01-05 09:40:41'),
(1093, 120, 941, 'Alpa', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', '', '', '', '', 80, 80, 100, 80, 100, 80, 75, 90, NULL, '2023-02-02 09:28:16', '2023-01-05 09:35:20'),
(1094, 120, 800, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', '', '', '', 90, 90, 100, 80, 100, 90, 80, 56, NULL, '2023-02-02 09:28:31', '2023-01-05 09:40:13'),
(1096, 120, 824, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', '', '', '', '', 80, 85, 100, 80, 0, 85, 80, 55, NULL, '2023-01-31 22:06:14', '2023-01-05 09:40:21'),
(1105, 119, 915, 'Hadir', 'Izin', 'Hadir', '', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Alpa', '', '', '', 70, 80, 100, 80, 80, 80, 80, 80, NULL, '2023-01-31 21:16:49', '2023-01-31 19:24:07'),
(1106, 119, 926, 'Hadir', 'Hadir', 'Hadir', '', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', '', '', 80, 80, 100, 80, 85, 85, 85, 85, NULL, '2023-01-31 20:50:12', '2023-01-31 19:24:23'),
(1108, 119, 847, 'Izin', 'Izin', 'Hadir', '', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Alpa', '', '', '', 60, 80, 80, 80, 80, 80, 75, 78, NULL, '2023-01-31 21:33:59', '2023-01-31 19:24:46'),
(1109, 119, 815, 'Hadir', 'Hadir', 'Alpa', '', 'Hadir', 'Alpa', 'Alpa', 'Alpa', 'Alpa', '', '', '', 60, 60, 0, 80, 100, 80, 80, 80, NULL, '2023-02-02 09:30:14', '2023-01-31 19:23:53'),
(1110, 119, 906, 'Hadir', 'Izin', 'Hadir', '', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Alpa', '', '', '', 70, 80, 100, 80, 85, 90, 75, 83, NULL, '2023-02-02 09:25:47', '2023-01-31 21:14:49'),
(1111, 119, 705, 'Hadir', 'Hadir', 'Alpa', '', 'Hadir', 'Alpa', 'Hadir', 'Hadir', 'Alpa', '', '', '', 70, 80, 100, 70, 80, 85, 85, 83, NULL, '2023-02-02 09:26:25', '2023-01-31 19:25:52'),
(1112, 119, 726, 'Hadir', 'Hadir', 'Hadir', '', 'Hadir', 'Alpa', 'Hadir', 'Hadir', 'Alpa', '', '', '', 70, 80, 100, 80, 80, 85, 80, 78, NULL, '2023-02-02 09:27:03', '2023-01-31 21:13:37'),
(1118, 119, 953, 'Hadir', 'Hadir', 'Hadir', '', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', '', '', '', 50, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-01-31 21:25:43', '2023-01-31 21:13:52'),
(1119, 119, 954, 'Hadir', 'Hadir', 'Hadir', '', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', '', '', '', 50, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-01-31 21:25:57', '2023-01-31 21:14:10'),
(1120, 119, 955, 'Alpa', 'Izin', 'Alpa', '', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', '', '', '', 30, 0, 0, 0, 70, 80, 70, 73, NULL, '2023-01-31 21:44:29', '2023-01-31 21:15:09'),
(1121, 119, 983, 'Hadir', 'Hadir', 'Hadir', '', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Alpa', '', '', '', 80, 80, 100, 80, 80, 90, 80, 83, NULL, '2023-01-31 21:35:11', '2023-01-31 21:15:49'),
(1127, 110, 770, 'Hadir', '', '', '', '', '', '', '', '', '', '', '', 100, 90, 90, 90, 60, 80, 90, 90, NULL, '2023-02-02 11:45:46', '2022-10-29 14:52:07'),
(1128, 110, 817, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 90, 85, 90, 85, 80, 90, 80, 90, NULL, '2023-02-02 11:44:36', NULL),
(1130, 110, 747, 'Hadir', '', '', '', '', '', '', '', '', '', '', '', 85, 85, 90, 85, 85, 70, 70, 90, NULL, '2023-02-02 11:37:48', '2022-10-29 14:53:14'),
(1131, 110, 748, 'Hadir', '', '', '', '', '', '', '', '', '', '', '', 90, 85, 90, 85, 85, 70, 70, 90, NULL, '2023-02-02 11:40:55', '2022-10-29 14:53:19'),
(1132, 110, 758, 'Hadir', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-02-02 11:41:15', '2022-10-29 14:53:23'),
(1134, 110, 1029, 'Hadir', '', '', '', '', '', '', '', '', '', '', '', 50, 50, 0, 50, 0, 0, 0, 0, NULL, '2023-02-02 11:42:01', '2022-10-29 14:53:00'),
(1136, 110, 1040, 'Hadir', '', '', '', '', '', '', '', '', '', '', '', 70, 50, 90, 80, 65, 70, 70, 90, NULL, '2023-02-02 11:42:54', '2022-10-29 14:53:06'),
(1140, 114, 837, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Izin', 'Hadir', 'Alpa', 'Hadir', 'Izin', 'Hadir', 'Hadir', 82, 79, 83, 80, 80, 80, 82, 80, NULL, '2023-01-30 08:44:01', '2023-01-30 09:00:44'),
(1141, 114, 767, 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 90, 90, 91, 90, 90, 89, 90, 90, NULL, '2023-01-30 08:55:24', '2023-01-30 09:01:42'),
(1142, 114, 994, 'Alpa', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Izin', 'Izin', 'Hadir', 'Izin', 'Hadir', 'Izin', 'Izin', 84, 81, 85, 83, 85, 85, 83, 85, NULL, '2023-01-30 08:45:38', '2023-01-30 09:02:03'),
(1144, 114, 869, 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Izin', 85, 86, 86, 87, 84, 89, 87, 88, NULL, '2023-01-30 08:59:17', '2023-01-30 09:05:18'),
(1146, 114, 876, 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 90, 90, 90, 90, 90, 90, 90, 90, NULL, '2023-01-30 08:52:45', '2023-01-30 09:03:03'),
(1148, 114, 709, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 90, 90, 92, 92, 90, 90, 90, 90, NULL, '2023-01-30 08:53:25', '2023-01-30 09:03:21'),
(1149, 114, 727, 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 89, 89, 90, 90, 90, 90, 90, 90, NULL, '2023-01-30 09:00:01', '2023-01-30 09:03:46'),
(1150, 114, 898, 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 90, 90, 91, 90, 90, 90, 90, 90, NULL, '2023-01-30 08:57:03', '2023-01-30 09:04:02'),
(1151, 114, 899, 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 90, 91, 91, 90, 90, 90, 92, 90, NULL, '2023-01-30 08:57:38', '2023-01-30 09:04:57'),
(1153, 122, 1052, 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 89, 80, 89, 100, 100, 98, 98, 96, NULL, '2023-01-24 08:37:35', '2023-01-18 12:45:24'),
(1154, 122, 1064, 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 92, 87, 100, 100, 95, 98, 75, 92, NULL, '2023-01-24 08:38:38', '2023-01-18 12:46:09'),
(1155, 122, 924, 'Hadir', 'Hadir', '', '', '', '', '', '', '', '', '', '', 20, 20, 0, 20, 20, 20, 20, 0, NULL, '2023-01-24 08:39:31', '2022-11-09 07:48:30'),
(1156, 122, 925, 'Izin', 'Hadir', '', '', '', '', '', '', '', '', '', '', 20, 20, 75, 20, 20, 20, 20, 0, NULL, '2023-01-24 08:40:13', '2022-11-09 07:48:39'),
(1158, 122, 999, 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 83, 80, 100, 100, 98, 97, 80, 95, NULL, '2023-01-18 13:00:41', '2023-01-18 12:47:02'),
(1159, 122, 1031, 'Izin', 'Hadir', 'Alpa', 'Alpa', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 80, 80, 85, 85, 89, 82, 89, 86, NULL, '2023-01-24 08:43:46', '2023-01-18 12:47:37'),
(1162, 123, 779, 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', '', 'Hadir', 'Hadir', 85, 80, 90, 70, 80, 83, 82, 90, NULL, '2023-01-23 19:00:22', '2023-01-23 18:00:44'),
(1164, 123, 852, 'Hadir', 'Hadir', 'Izin', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', '', 'Hadir', 'Hadir', 80, 85, 90, 70, 80, 82, 80, 90, NULL, '2023-01-23 19:03:47', '2023-01-23 18:00:53'),
(1165, 123, 871, 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', '', 'Hadir', 'Hadir', 80, 80, 90, 80, 88, 85, 85, 90, NULL, '2023-01-23 20:32:02', '2023-01-23 18:01:11'),
(1166, 123, 875, 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Izin', '', 'Hadir', 'Hadir', 80, 70, 90, 70, 80, 85, 83, 90, NULL, '2023-01-23 20:32:59', '2023-01-23 18:01:17'),
(1169, 123, 792, '', '', '', '', '', '', '', '', '', '', '', 'Hadir', 80, 75, 90, 68, 0, 0, 0, 90, NULL, '2023-01-23 20:30:19', '2023-01-23 18:02:11'),
(1170, 123, 872, 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', '', 'Hadir', 'Hadir', 80, 83, 90, 80, 85, 80, 80, 90, NULL, '2023-01-23 20:33:55', '2023-01-23 18:02:33'),
(1171, 123, 774, 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Izin', '', 'Hadir', 'Hadir', 80, 80, 90, 80, 83, 80, 80, 90, NULL, '2023-01-23 20:35:05', '2023-01-23 18:02:39'),
(1172, 123, 834, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', 'Hadir', 'Hadir', 80, 85, 90, 87, 88, 80, 83, 90, NULL, '2023-01-23 20:38:50', '2023-01-23 18:02:56'),
(1173, 123, 856, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', '', 'Hadir', 'Hadir', 85, 82, 90, 80, 87, 85, 80, 90, NULL, '2023-01-23 21:01:01', '2023-01-23 18:03:01'),
(1174, 123, 857, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', '', 'Hadir', 'Hadir', 80, 81, 90, 88, 85, 80, 78, 90, NULL, '2023-01-23 21:06:01', '2023-01-23 18:03:41'),
(1175, 123, 873, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Alpa', '', 'Hadir', 'Hadir', 85, 80, 90, 80, 83, 80, 75, 90, NULL, '2023-01-23 21:04:47', '2023-01-23 18:03:34'),
(1176, 123, 971, 'Hadir', 'Hadir', 'Izin', 'Izin', 'Alpa', 'Alpa', 'Alpa', 'Hadir', 'Alpa', 'Alpa', 'Hadir', 'Hadir', 20, 0, 90, 0, 0, 0, 0, 90, NULL, '2023-01-23 19:13:32', '2023-01-23 18:03:27'),
(1177, 122, 888, 'Izin', 'Hadir', 'Alpa', 'Izin', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 80, 80, 80, 80, 85, 89, 90, 90, NULL, '2023-01-24 08:46:25', '2023-01-18 12:48:24'),
(1178, 122, 913, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 92, 90, 95, 100, 95, 98, 90, 92, NULL, '2023-01-24 08:48:19', '2023-01-18 12:49:15'),
(1180, 107, 934, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 75, 80, 82, 80, 82, 85, 80, 80, NULL, '2023-02-02 14:29:48', NULL),
(1182, 107, 878, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 85, 80, 83, 80, 82, 83, 85, 80, NULL, '2023-02-02 14:30:17', NULL),
(1183, 107, 889, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 79, 79, 80, 79, 82, 83, 80, 80, NULL, '2023-02-02 14:32:01', NULL),
(1184, 107, 900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 80, 80, 80, 80, 85, 85, 80, 80, NULL, '2023-02-02 14:41:12', NULL),
(1185, 107, 775, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 85, 80, 80, 80, 83, 83, 80, 80, NULL, '2023-02-02 14:41:06', NULL),
(1186, 107, 877, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 85, 80, 80, 80, 82, 85, 80, 80, NULL, '2023-02-02 14:41:29', NULL),
(1187, 122, 917, 'Izin', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 90, 89, 90, 95, 90, 90, 92, 90, NULL, '2023-01-24 08:50:13', '2023-01-18 12:53:19'),
(1188, 116, 746, 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Izin', 'Alpa', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 96, 70, 80, 90, 95, 90, 80, 75, NULL, '2023-01-20 08:59:39', '2023-01-20 08:25:48'),
(1189, 111, 827, 'Hadir', '', '', '', '', '', '', '', '', '', '', '', 90, 85, 90, 85, 80, 75, 80, 90, NULL, '2023-02-02 12:09:36', '2022-11-02 15:28:11'),
(1190, 111, 945, 'Izin', '', '', '', '', '', '', '', '', '', '', '', 40, 50, 90, 50, 0, 0, 0, 0, NULL, '2023-02-02 12:10:20', '2022-11-02 15:28:52'),
(1192, 122, 890, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 90, 100, 90, 100, 95, 95, 90, 95, NULL, '2023-01-24 08:51:41', '2023-01-18 12:53:53'),
(1193, 123, 1018, 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Hadir', 'Alpa', '', 'Hadir', 'Hadir', 78, 80, 90, 86, 0, 0, 0, 90, NULL, '2023-01-23 21:03:41', '2023-01-23 18:03:21'),
(1198, 124, 880, 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 90, 80, 85, 90, 90, 90, 80, 85, NULL, '2023-02-02 18:20:45', '2023-02-02 17:45:51'),
(1199, 124, 940, 'Alpa', 'Izin', 'Alpa', 'Alpa', 'Alpa', 'Hadir', 'Izin', 'Izin', 'Alpa', 'Hadir', 'Alpa', 'Alpa', 50, 50, 60, 50, 75, 80, 80, 50, NULL, '2023-02-02 18:25:58', '2023-02-02 18:11:51'),
(1201, 124, 844, 'Izin', 'Izin', 'Hadir', 'Alpa', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Alpa', 'Alpa', 50, 50, 60, 50, 75, 80, 80, 50, NULL, '2023-02-02 18:26:51', '2023-02-02 17:49:37'),
(1202, 124, 846, 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Izin', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Izin', 'Hadir', 'Hadir', 90, 80, 85, 90, 85, 85, 80, 90, NULL, '2023-02-02 18:20:54', '2023-02-02 17:50:21'),
(1210, 124, 1057, 'Izin', 'Hadir', 'Hadir', 'Izin', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Izin', 'Izin', 80, 80, 85, 85, 85, 85, 80, 80, NULL, '2023-02-02 18:20:34', '2023-02-02 17:52:20'),
(1211, 125, 845, 'Hadir', 'Hadir', 'Alpa', 'Alpa', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 80, 85, 90, 80, 80, 80, 80, 85, NULL, '2023-02-02 13:51:46', '2023-01-31 20:47:12'),
(1212, 125, 870, 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Izin', 'Hadir', 'Hadir', 'Izin', 'Hadir', 85, 80, 85, 80, 85, 80, 80, 85, NULL, '2023-02-02 11:18:16', '2023-01-31 20:47:45'),
(1213, 125, 874, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Izin', 'Hadir', 'Alpa', 'Hadir', 'Hadir', 85, 90, 90, 75, 80, 85, 80, 90, NULL, '2023-02-02 13:51:59', '2023-01-31 20:48:22'),
(1216, 125, 950, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Izin', 'Alpa', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 90, 80, 90, 75, 85, 80, 80, 90, NULL, '2023-02-02 11:20:24', '2023-02-02 13:40:06'),
(1217, 125, 1006, 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Alpa', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 80, 90, 90, 75, 80, 80, 80, 85, NULL, '2023-02-02 11:21:10', '2023-02-02 13:41:43'),
(1219, 125, 700, 'Hadir', 'Alpa', 'Hadir', 'Izin', 'Alpa', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 80, 85, 85, 70, 90, 80, 85, 95, NULL, '2023-02-02 13:52:09', '2023-02-02 13:41:12'),
(1220, 125, 731, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Alpa', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 85, 85, 85, 70, 80, 85, 80, 90, NULL, '2023-02-02 13:52:21', '2023-02-02 13:43:02'),
(1221, 125, 739, 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Izin', 'Izin', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', 'Hadir', 85, 85, 90, 70, 80, 80, 85, 90, NULL, '2023-02-02 13:52:34', '2023-02-02 13:44:13'),
(1223, 125, 715, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Alpa', 'Hadir', 'Izin', 'Hadir', 80, 80, 85, 80, 85, 85, 80, 95, NULL, '2023-02-02 13:52:50', '2023-02-02 13:44:39'),
(1225, 125, 766, 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 85, 80, 90, 70, 85, 80, 80, 90, NULL, '2023-02-02 13:53:49', '2023-02-02 13:45:29'),
(1226, 125, 798, 'Izin', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Alpa', 85, 70, 90, 80, 80, 85, 75, 90, NULL, '2023-02-02 13:51:24', '2023-02-02 13:47:00'),
(1228, 126, 743, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 70, 40, 70, 100, 60, 75, 70, 90, NULL, '2023-02-02 12:01:55', NULL),
(1229, 126, 751, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 80, 80, 100, 90, 75, 80, 80, 75, NULL, '2023-02-02 12:02:41', NULL),
(1230, 126, 761, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 80, 70, 100, 70, 90, 90, 85, 80, NULL, '2023-02-02 12:03:31', NULL),
(1232, 126, 908, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 70, 90, 75, 60, 85, 80, NULL, '2023-02-02 12:03:46', NULL),
(1234, 126, 902, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-02-02 11:03:34', NULL),
(1236, 126, 865, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60, 70, 0, 70, 75, 60, 60, 75, NULL, '2023-02-02 12:03:58', NULL),
(1237, 126, 1008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 90, 80, 100, 90, 90, 60, 80, 75, NULL, '2023-02-02 12:04:27', NULL),
(1238, 126, 1034, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60, 80, 100, 90, 75, 90, 80, 90, NULL, '2023-02-02 12:04:50', NULL),
(1241, 126, 1065, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60, 85, 85, 80, 79, 70, 70, 70, NULL, '2023-02-02 12:04:58', NULL),
(1242, 126, 882, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 80, 80, 100, 90, 90, 80, 70, 70, NULL, '2023-02-02 12:05:08', NULL),
(1243, 126, 961, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60, 85, 90, 89, 90, 60, 60, 75, NULL, '2023-02-02 12:05:26', NULL),
(1244, 126, 976, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60, 80, 70, 89, 75, 90, 85, 90, NULL, '2023-02-02 12:05:37', NULL),
(1251, 128, 742, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 100, 85, 100, 100, 100, 100, 85, NULL, '2023-01-13 09:16:23', NULL),
(1252, 128, 752, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 100, 85, 100, 100, 100, 100, 90, NULL, '2023-01-13 09:16:58', NULL),
(1253, 128, 762, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 100, 80, 100, 100, 100, 100, 80, NULL, '2023-01-13 09:17:10', NULL),
(1254, 128, 887, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 100, 70, 100, 100, 100, 100, 70, NULL, '2023-01-13 09:17:48', NULL),
(1255, 128, 891, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 100, 85, 100, 100, 100, 100, 85, NULL, '2023-01-13 09:18:33', NULL),
(1256, 128, 740, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 100, 90, 100, 100, 100, 100, 100, NULL, '2023-01-13 09:18:51', NULL),
(1257, 128, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 100, 95, 100, 100, 100, 100, 100, NULL, '2023-01-13 09:19:08', NULL),
(1258, 128, 1001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 100, 90, 100, 100, 100, 100, 80, NULL, '2023-01-13 09:19:26', NULL),
(1259, 128, 698, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 100, 85, 100, 100, 100, 100, 100, NULL, '2023-01-13 09:19:54', NULL),
(1260, 128, 704, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 100, 95, 100, 100, 100, 100, 100, NULL, '2023-01-13 09:20:06', NULL),
(1261, 128, 729, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 100, 85, 100, 100, 100, 100, 100, NULL, '2023-01-13 09:20:21', NULL),
(1262, 128, 763, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 100, 75, 100, 100, 100, 100, 80, NULL, '2023-01-13 09:20:41', NULL),
(1263, 128, 1019, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 100, 65, 100, 100, 100, 100, 65, NULL, '2023-01-13 09:20:54', NULL),
(1264, 128, 1062, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-01-18 08:23:29', NULL),
(1271, 133, 981, '', 'Alpa', '', '', '', '', '', '', '', '', '', '', 10, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-01-23 13:02:36', '2022-12-24 09:40:53'),
(1272, 133, 993, '', 'Hadir', '', '', '', '', '', '', '', '', '', '', 80, 70, 90, 40, 90, 90, 90, 90, NULL, '2023-01-23 12:55:48', '2022-11-05 09:15:33'),
(1273, 133, 980, '', 'Alpa', '', '', '', '', '', '', '', '', '', '', 80, 70, 90, 70, 90, 90, 90, 90, NULL, '2023-01-23 12:55:59', '2022-12-24 09:40:34'),
(1274, 133, 749, '', 'Alpa', '', '', '', 'Hadir', '', '', '', '', '', '', 80, 80, 90, 70, 90, 90, 90, 90, NULL, '2023-01-23 12:56:07', '2022-12-24 09:40:43'),
(1275, 133, 754, '', 'Hadir', '', '', '', '', '', '', '', '', '', '', 80, 80, 90, 70, 90, 90, 90, 85, NULL, '2023-01-23 12:56:13', '2022-11-05 09:15:15'),
(1276, 133, 831, '', 'Alpa', '', '', '', '', '', '', '', '', '', '', 10, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-01-23 13:02:41', '2022-12-24 09:41:05'),
(1290, 124, 1004, 'Izin', 'Izin', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Izin', 'Izin', 'Hadir', 'Hadir', 'Alpa', 'Izin', 80, 80, 80, 75, 75, 80, 80, 80, NULL, '2023-02-02 18:24:18', '2023-02-02 17:53:32'),
(1293, 132, 916, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 70, 70, 80, 70, 70, 0, 0, 90, NULL, '2023-02-02 15:16:30', NULL),
(1294, 132, 947, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 70, 70, 70, 70, 70, 75, 70, 90, NULL, '2023-02-02 15:16:09', NULL),
(1295, 132, 830, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 80, 80, 80, 82, 85, 80, 90, NULL, '2023-01-31 19:28:01', NULL),
(1296, 132, 850, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 70, 70, 80, 75, 80, 82, 80, 90, NULL, '2023-02-01 14:18:32', NULL),
(1297, 132, 894, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 90, 87, 90, 90, 85, 88, 90, NULL, '2023-02-01 14:17:48', NULL),
(1298, 132, 1017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 80, 75, 80, 85, 85, 80, 90, NULL, '2023-02-01 14:16:37', NULL),
(1299, 132, 1024, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 80, 75, 75, 80, 85, 80, 90, NULL, '2023-02-01 13:58:42', NULL),
(1313, 131, 958, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, 90, 50, 50, 90, 90, 90, 0, NULL, '2023-01-20 13:34:53', NULL),
(1315, 131, 966, 'Hadir', '', 'Alpa', '', '', '', '', '', '', '', '', '', 50, 90, 50, 50, 90, 90, 90, 0, NULL, '2023-01-20 13:34:58', '2022-11-12 07:46:27'),
(1316, 131, 1066, 'Hadir', '', 'Alpa', '', '', '', '', '', '', '', '', '', 50, 90, 50, 50, 90, 90, 90, 0, NULL, '2023-01-20 13:35:01', '2022-11-12 07:46:40'),
(1317, 131, 750, 'Hadir', '', 'Hadir', '', '', '', '', '', '', '', '', '', 98, 90, 85, 95, 95, 90, 90, 95, NULL, '2023-01-12 09:13:08', '2022-11-12 07:46:50'),
(1318, 131, 781, 'Hadir', '', 'Hadir', '', '', '', '', '', '', '', '', '', 98, 90, 85, 95, 95, 90, 90, 95, NULL, '2023-01-12 09:13:38', '2022-11-12 07:46:57'),
(1319, 131, 801, 'Hadir', '', 'Hadir', '', '', '', '', '', '', '', '', '', 98, 90, 90, 95, 95, 90, 90, 95, NULL, '2023-01-12 09:16:29', '2022-11-12 07:47:06'),
(1320, 131, 802, 'Hadir', '', 'Hadir', '', '', '', '', '', '', '', '', '', 98, 90, 95, 95, 95, 90, 90, 95, NULL, '2023-01-12 09:15:27', '2022-11-12 07:47:50'),
(1321, 131, 803, 'Hadir', '', 'Hadir', '', '', '', '', '', '', '', '', '', 98, 90, 70, 95, 95, 90, 90, 95, NULL, '2023-01-12 09:15:53', '2022-11-12 07:48:06'),
(1322, 131, 820, 'Izin', '', 'Hadir', '', '', '', '', '', '', '', '', '', 98, 90, 90, 95, 95, 90, 90, 95, NULL, '2023-01-12 09:16:21', '2022-11-12 07:48:25'),
(1324, 131, 1009, 'Hadir', '', 'Alpa', '', '', '', '', '', '', '', '', '', 50, 90, 50, 50, 90, 90, 90, 0, NULL, '2023-01-20 13:35:05', '2022-11-12 07:48:34'),
(1326, 131, 1036, '', '', 'Alpa', '', '', '', '', '', '', '', '', '', 50, 90, 50, 50, 90, 90, 90, 0, NULL, '2023-01-20 13:35:08', '2022-11-12 07:48:43'),
(1327, 131, 755, 'Hadir', '', 'Hadir', '', '', '', '', '', '', '', '', '', 98, 90, 70, 95, 95, 90, 90, 95, NULL, '2023-01-14 11:38:22', '2022-11-12 07:49:04'),
(1328, 131, 952, 'Izin', '', 'Alpa', '', '', '', '', '', '', '', '', '', 50, 90, 50, 50, 90, 90, 90, 0, NULL, '2023-01-20 13:35:12', '2022-11-12 07:49:15'),
(1329, 130, 903, 'Hadir', 'Hadir', 'Izin', 'Hadir', '', '', '', '', '', '', '', '', 65, 50, 75, 75, 75, 75, 60, 70, NULL, '2023-02-01 00:58:56', '2023-01-06 16:32:01'),
(1337, 130, 851, '', 'Hadir', 'Hadir', 'Hadir', '', '', '', '', '', '', '', '', 68, 55, 77, 60, 70, 75, 60, 70, NULL, '2023-02-01 01:03:42', '2023-01-06 16:25:55'),
(1340, 130, 928, '', 'Hadir', '', '', '', '', '', '', '', '', '', '', 65, 55, 0, 0, 0, 0, 0, 0, NULL, '2023-02-01 00:59:26', '2022-11-04 16:19:48'),
(1341, 130, 944, '', 'Hadir', 'Izin', '', '', '', '', '', '', '', '', '', 65, 55, 60, 60, 70, 75, 65, 65, NULL, '2023-02-01 01:04:34', '2022-11-11 16:42:57'),
(1342, 130, 1016, '', 'Hadir', '', '', '', '', '', '', '', '', '', '', 65, 55, 0, 60, 0, 0, 0, 0, NULL, '2023-02-01 01:03:53', '2022-11-04 16:20:07'),
(1346, 127, 701, 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 100, 90, 80, 100, 90, 90, 90, 90, NULL, '2023-01-17 22:01:51', '2023-01-14 21:54:15'),
(1347, 127, 706, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 100, 85, 85, 90, 90, 83, 90, 95, NULL, '2023-01-19 09:03:12', '2023-01-14 21:55:22'),
(1353, 129, 819, 'Hadir', '', '', '', '', '', '', '', '', '', '', '', 100, 100, 0, 100, 100, 50, 100, 0, NULL, '2023-01-28 05:50:50', '2022-10-25 12:33:40'),
(1354, 129, 885, 'Hadir', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-25 17:33:59'),
(1355, 129, 948, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1356, 129, 959, 'Hadir', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-25 17:34:36'),
(1357, 129, 986, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1358, 129, 1002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1359, 129, 893, 'Hadir', '', '', '', '', '', '', '', '', '', '', '', 100, 100, 70, 100, 100, 70, 100, 70, NULL, '2023-01-28 05:51:39', '2022-10-25 12:43:17'),
(1360, 129, 957, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1361, 129, 977, 'Hadir', '', '', '', '', '', '', '', '', '', '', '', 100, 100, 70, 100, 100, 70, 100, 70, NULL, '2023-01-28 05:52:01', '2022-10-25 17:32:46'),
(1362, 129, 990, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1364, 129, 932, 'Hadir', '', '', '', '', '', '', '', '', '', '', '', 100, 100, 70, 100, 100, 70, 100, 70, NULL, '2023-01-28 05:52:39', '2022-10-25 12:33:56'),
(1365, 129, 988, 'Hadir', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-25 17:33:50'),
(1366, 129, 989, 'Hadir', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-25 17:34:13'),
(1367, 134, 716, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', '', '', '', '', '', '', 90, 90, 90, 85, 85, 85, 88, 95, NULL, '2023-01-26 11:59:36', '2022-12-16 22:01:38'),
(1368, 134, 718, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', '', '', '', '', '', '', 90, 95, 90, 100, 88, 90, 80, 95, NULL, '2023-01-26 11:59:26', '2022-12-16 22:01:56'),
(1369, 134, 719, 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', '', '', '', '', '', '', '', 80, 90, 85, 85, 90, 90, 87, 85, NULL, '2023-01-26 12:00:25', '2022-12-16 22:04:38'),
(1370, 134, 794, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', '', '', '', '', '', '', 90, 90, 85, 85, 88, 85, 78, 90, NULL, '2023-01-26 12:00:39', '2022-12-16 22:02:09'),
(1371, 134, 931, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', '', '', '', '', '', '', 80, 95, 85, 90, 90, 85, 80, 90, NULL, '2023-01-26 12:00:46', '2022-12-16 22:02:15'),
(1372, 134, 1021, 'Hadir', 'Hadir', '', 'Hadir', 'Izin', '', '', '', '', '', '', '', 80, 90, 85, 100, 88, 90, 80, 90, NULL, '2023-01-26 12:01:50', '2022-12-16 22:02:21'),
(1373, 134, 858, 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', '', '', '', '', '', '', '', 80, 85, 90, 85, 90, 85, 87, 90, NULL, '2023-01-26 12:01:12', '2022-12-16 22:02:26'),
(1374, 134, 859, 'Hadir', 'Hadir', 'Izin', 'Izin', 'Hadir', '', '', '', '', '', '', '', 80, 95, 95, 100, 95, 90, 98, 90, NULL, '2023-01-26 12:02:02', '2022-12-16 22:04:48'),
(1375, 134, 860, 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', '', '', '', '', '', '', '', 80, 90, 85, 85, 88, 85, 80, 85, NULL, '2023-01-26 12:02:22', '2022-12-16 22:04:58'),
(1376, 134, 861, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', '', '', '', '', '', '', 90, 90, 85, 100, 85, 90, 70, 85, NULL, '2023-01-26 12:02:33', '2022-12-16 22:02:43'),
(1377, 134, 862, 'Hadir', 'Izin', '', 'Izin', 'Izin', '', '', '', '', '', '', '', 75, 85, 80, 75, 85, 90, 80, 85, NULL, '2023-01-26 12:02:49', '2022-12-16 22:05:06'),
(1378, 134, 863, 'Hadir', 'Hadir', '', 'Izin', 'Hadir', '', '', '', '', '', '', '', 80, 85, 80, 75, 85, 85, 70, 85, NULL, '2023-01-26 12:03:03', '2022-12-16 22:05:15'),
(1379, 134, 910, 'Alpa', 'Hadir', 'Alpa', 'Izin', 'Hadir', '', '', '', '', '', '', '', 70, 80, 80, 70, 80, 85, 70, 85, NULL, '2023-01-26 11:57:01', '2022-12-16 22:05:22'),
(1380, 134, 1028, 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', '', '', '', '', '', '', '', 80, 90, 85, 85, 90, 85, 80, 90, NULL, '2023-01-26 12:03:18', '2022-12-16 22:05:32'),
(1382, 127, 760, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 100, 85, 85, 95, 90, 85, 90, 90, NULL, '2023-01-17 22:13:34', '2023-01-14 21:55:29'),
(1383, 127, 1012, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', '', 'Hadir', 'Hadir', 'Hadir', 92, 80, 80, 80, 90, 80, 78, 80, NULL, '2023-01-20 18:47:14', '2023-01-14 21:55:34'),
(1387, 136, 854, 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 100, 78, 95, 79, 100, 100, 90, 95, NULL, '2023-01-13 22:19:45', '2023-01-13 21:41:50'),
(1388, 136, 1049, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 100, 80, 93, 80, 100, 100, 90, 93, NULL, '2023-01-13 22:26:34', '2023-01-13 21:41:58'),
(1389, 136, 1076, 'Hadir', 'Hadir', 'Alpa', 'Izin', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 25, 15, 0, 0, 0, 0, 0, 0, NULL, '2023-01-13 22:28:02', '2023-01-13 21:41:45'),
(1390, 136, 759, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Alpa', 'Alpa', 'Alpa', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 90, 75, 90, 90, 100, 100, 90, 95, NULL, '2023-01-13 22:28:48', '2023-01-13 21:42:07'),
(1391, 136, 818, 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 90, 80, 90, 85, 100, 100, 90, 94, NULL, '2023-01-13 22:32:05', '2023-01-13 21:42:17'),
(1392, 136, 736, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 100, 75, 90, 80, 100, 100, 90, 90, NULL, '2023-01-13 22:36:40', '2023-01-13 21:42:22'),
(1393, 135, 996, 'Izin', 'Hadir', 'Hadir', '', '', '', '', '', 'Hadir', 'Hadir', '', '', 50, 75, 50, 60, 50, 50, 65, 75, NULL, '2023-01-28 08:58:02', '2023-01-28 09:02:47'),
(1394, 135, 997, 'Hadir', 'Hadir', 'Alpa', '', '', '', '', 'Hadir', '', 'Hadir', '', '', 60, 75, 40, 80, 80, 75, 80, 85, NULL, '2023-01-28 08:54:39', '2023-01-28 09:02:56'),
(1395, 135, 733, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', 'Hadir', 'Hadir', 'Hadir', '', '', 80, 80, 55, 85, 80, 85, 75, 85, NULL, '2023-01-28 09:00:58', '2023-01-28 09:03:03'),
(1396, 135, 734, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', '', 90, 85, 65, 85, 80, 80, 80, 90, NULL, '2023-01-28 08:49:14', '2023-01-28 09:03:10'),
(1399, 135, 881, 'Alpa', 'Alpa', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', '', '', 60, 80, 60, 85, 80, 80, 75, 90, NULL, '2023-01-28 08:55:20', '2023-01-28 09:04:29'),
(1402, 137, 992, 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Izin', 'Izin', 'Izin', 'Izin', 'Izin', 'Hadir', 'Hadir', 'Izin', 70, 80, 80, 70, 80, 80, 90, 90, NULL, '2023-02-01 13:23:19', '2023-02-01 13:15:34'),
(1404, 137, 1047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1405, 137, 1048, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1407, 137, 1074, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1408, 137, 809, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1419, 136, 717, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 100, 78, 90, 80, 100, 100, 94, 90, NULL, '2023-01-13 22:40:14', '2023-01-13 21:42:28'),
(1421, 136, 780, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Alpa', 'Hadir', 'Hadir', 90, 80, 95, 80, 100, 100, 90, 90, NULL, '2023-01-13 22:40:42', '2023-01-13 21:42:34'),
(1422, 136, 1039, 'Alpa', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Izin', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Hadir', 60, 50, 50, 50, 60, 60, 50, 90, NULL, '2023-01-13 22:58:19', '2023-01-13 21:42:39'),
(1423, 135, 826, 'Hadir', 'Alpa', 'Alpa', '', '', '', '', 'Alpa', '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-01-28 08:58:35', '2022-12-22 10:22:53'),
(1424, 135, 848, 'Hadir', '', 'Izin', '', 'Hadir', '', 'Hadir', 'Hadir', '', 'Hadir', '', '', 70, 85, 70, 75, 75, 80, 70, 85, NULL, '2023-01-28 08:57:13', '2023-01-28 09:03:30'),
(1425, 136, 829, 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Alpa', 'Hadir', 'Hadir', 'Hadir', 90, 80, 90, 85, 100, 100, 85, 90, NULL, '2023-01-13 22:47:53', '2023-01-13 21:42:49'),
(1428, 127, 907, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', 'Hadir', 92, 85, 85, 80, 90, 90, 90, 93, NULL, '2023-01-19 20:05:10', '2023-01-14 21:55:38');
INSERT INTO `kelompok_kbm` (`id_kelompok`, `jadwal_id`, `peserta_id`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`, `p7`, `p8`, `p9`, `p10`, `p11`, `p12`, `kehadiran`, `mutabaah`, `uts`, `kegiatan_wajib`, `wudhu`, `sholat`, `tilawah`, `uas_tertulis`, `pembuat`, `created_at`, `absen_at`) VALUES
(1429, 127, 933, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 100, 78, 78, 80, 90, 80, 85, 80, NULL, '2023-01-19 09:03:34', '2023-01-14 21:55:46'),
(1430, 127, 927, 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 58, 60, 60, 58, 80, 50, 60, 0, NULL, '2023-01-21 05:33:57', '2023-01-14 21:55:12'),
(1436, 127, 943, 'Alpa', 'Hadir', 'Alpa', 'Hadir', 'Izin', 'Hadir', 'Alpa', 'Hadir', 'Hadir', '', '', 'Hadir', 58, 78, 78, 80, 90, 78, 78, 80, NULL, '2023-01-21 05:32:09', '2023-01-14 21:56:12'),
(1437, 127, 965, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', 'Hadir', '', 'Hadir', 83, 80, 80, 85, 90, 78, 85, 85, NULL, '2023-01-21 05:14:57', '2023-01-14 21:56:33'),
(1442, 130, 1037, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 55, 50, 50, 70, 75, 65, 65, NULL, '2023-02-01 01:04:52', NULL),
(1443, 138, 714, '', 'Hadir', '', 'Izin', '', '', '', '', '', '', '', '', 70, 60, 90, 60, 90, 85, 80, 80, NULL, '2023-01-23 13:04:54', '2022-11-19 09:35:51'),
(1444, 138, 744, 'Hadir', 'Hadir', '', '', '', '', '', '', '', '', '', '', 70, 60, 90, 60, 90, 90, 80, 80, NULL, '2023-01-23 13:05:29', '2022-11-05 18:33:43'),
(1446, 138, 806, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 70, 80, 90, 60, 90, 85, 90, 90, NULL, '2023-01-23 13:06:04', NULL),
(1447, 138, 833, 'Hadir', '', '', '', '', '', '', '', '', '', '', '', 70, 70, 88, 70, 90, 80, 80, 85, NULL, '2023-01-23 13:06:41', '2022-10-29 17:40:46'),
(1449, 138, 982, '', 'Hadir', '', '', '', '', '', '', '', '', '', '', 70, 60, 90, 70, 90, 90, 80, 85, NULL, '2023-01-23 13:07:14', '2022-11-05 18:34:27'),
(1450, 138, 1060, '', 'Hadir', '', '', '', '', '', '', '', '', '', '', 70, 70, 90, 60, 85, 80, 85, 85, NULL, '2023-01-23 13:07:49', '2022-11-05 18:34:58'),
(1451, 138, 745, '', 'Hadir', '', '', '', 'Hadir', '', '', '', '', '', '', 70, 70, 88, 60, 80, 80, 85, 85, NULL, '2023-01-23 13:08:28', '2022-12-10 18:53:36'),
(1452, 138, 1054, 'Hadir', 'Hadir', '', '', 'Hadir', '', '', '', '', '', '', '', 70, 70, 85, 40, 90, 80, 90, 90, NULL, '2023-01-23 13:08:56', '2022-12-10 18:55:19'),
(1453, 138, 1071, 'Hadir', 'Hadir', '', '', '', '', '', '', '', '', '', '', 80, 80, 88, 70, 90, 85, 90, 90, NULL, '2023-01-23 13:09:45', '2022-11-05 18:36:06'),
(1454, 135, 753, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', '', 'Hadir', 'Hadir', 'Hadir', '', '', 80, 85, 65, 80, 80, 80, 80, 90, NULL, '2023-01-28 08:50:30', '2023-01-28 09:03:40'),
(1455, 135, 1070, '', '', '', 'Hadir', 'Hadir', 'Hadir', '', 'Hadir', 'Hadir', 'Hadir', '', '', 70, 80, 50, 85, 80, 80, 80, 85, NULL, '2023-01-28 08:50:46', '2023-01-28 09:03:48'),
(1457, 112, 1068, 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 85, 85, 92, 90, 100, 100, 100, 89, NULL, '2023-02-02 11:57:38', '2023-02-01 19:55:25'),
(1460, 138, 816, 'Hadir', 'Hadir', '', '', 'Hadir', 'Hadir', '', '', '', '', '', '', 80, 80, 90, 90, 90, 85, 90, 90, NULL, '2023-01-23 13:10:19', '2022-12-10 18:55:32'),
(1461, 109, 737, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Izin', 99, 90, 95, 88, 91, 92, 95, 95, NULL, '2023-01-24 09:49:19', '2023-01-18 09:53:07'),
(1462, 138, 1053, 'Hadir', 'Hadir', '', '', 'Hadir', 'Hadir', '', '', '', '', '', '', 70, 70, 85, 70, 85, 85, 80, 90, NULL, '2023-01-23 13:10:46', '2022-12-10 18:54:58'),
(1463, 129, 1096, 'Hadir', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-25 17:33:10'),
(1464, 139, 1075, 'Hadir', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Hadir', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 20, 0, 80, 70, 0, 0, 75, 0, NULL, '2023-01-10 21:27:20', '2023-01-10 21:19:24'),
(1465, 139, 1086, 'Hadir', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Hadir', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 20, 0, 80, 70, 0, 0, 75, 0, NULL, '2023-01-10 21:27:50', '2023-01-10 21:14:57'),
(1466, 139, 1087, 'Hadir', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Hadir', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 20, 0, 80, 70, 0, 0, 75, 0, NULL, '2023-01-10 21:27:30', '2023-01-10 21:18:57'),
(1467, 139, 1089, 'Hadir', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 20, 0, 85, 70, 0, 0, 70, 0, NULL, '2023-01-10 21:27:06', '2023-01-10 21:13:16'),
(1469, 139, 1103, 'Hadir', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Hadir', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 20, 0, 85, 70, 0, 0, 70, 0, NULL, '2023-01-10 21:28:06', '2023-01-10 21:18:33'),
(1470, 139, 1108, 'Hadir', 'Izin', 'Hadir', 'Izin', 'Alpa', 'Alpa', 'Hadir', 'Alpa', 'Hadir', 'Hadir', 'Izin', 'Hadir', 80, 80, 95, 85, 80, 85, 80, 90, NULL, '2023-01-10 21:28:44', '2023-01-10 21:19:57'),
(1471, 139, 1114, 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Izin', 'Hadir', 'Alpa', 'Hadir', 'Hadir', 'Izin', 'Hadir', 85, 80, 95, 90, 85, 85, 85, 95, NULL, '2023-01-10 21:21:35', '2023-01-10 21:16:17'),
(1473, 139, 1078, 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Izin', 'Alpa', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', 80, 80, 95, 85, 80, 80, 85, 90, NULL, '2023-01-10 21:22:11', '2023-01-10 21:16:52'),
(1474, 139, 1088, 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Alpa', 'Hadir', 'Izin', 'Alpa', 'Hadir', 85, 80, 90, 85, 85, 85, 83, 90, NULL, '2023-01-10 21:23:02', '2023-01-10 21:18:03'),
(1475, 139, 1090, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 85, 80, 90, 80, 85, 82, 80, 90, NULL, '2023-01-10 21:29:33', '2023-01-10 21:15:27'),
(1476, 139, 1093, 'Hadir', 'Alpa', 'Alpa', 'Hadir', 'Hadir', 'Izin', 'Izin', 'Hadir', 'Hadir', 'Alpa', 'Alpa', 'Hadir', 80, 80, 90, 80, 83, 83, 78, 90, NULL, '2023-01-10 21:30:18', '2023-01-10 21:17:21'),
(1477, 139, 1101, 'Hadir', 'Alpa', 'Hadir', 'Alpa', 'Izin', 'Hadir', 'Hadir', 'Alpa', 'Alpa', 'Hadir', 'Hadir', 'Hadir', 75, 80, 90, 85, 83, 83, 84, 85, NULL, '2023-01-10 21:25:50', '2023-01-10 21:13:58'),
(1478, 139, 1105, 'Hadir', 'Hadir', 'Izin', 'Alpa', 'Alpa', 'Alpa', 'Hadir', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 80, 80, 88, 80, 80, 80, 79, 85, NULL, '2023-01-25 10:51:29', '2023-01-10 21:16:08'),
(1479, 112, 1084, 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Izin', 'Izin', 'Hadir', 'Alpa', 'Hadir', 70, 65, 80, 70, 80, 80, 65, 70, NULL, '2023-02-02 11:05:18', '2023-02-01 20:19:00'),
(1482, 137, 1095, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 100, 80, 90, 90, 90, 90, 90, 90, NULL, '2023-02-01 13:21:41', '2023-02-01 13:11:53'),
(1483, 137, 1109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1484, 130, 1107, 'Hadir', 'Izin', '', 'Hadir', '', '', '', '', '', '', '', '', 50, 50, 55, 50, 70, 75, 65, 78, NULL, '2023-02-01 01:05:02', '2023-01-06 16:22:55'),
(1485, 130, 1119, 'Hadir', 'Izin', 'Hadir', 'Hadir', '', '', '', '', '', '', '', '', 65, 55, 77, 74, 70, 75, 65, 70, NULL, '2023-02-01 01:02:05', '2023-01-06 16:20:34'),
(1487, 135, 1091, '', 'Hadir', '', '', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-01-28 08:58:28', '2022-11-03 10:36:48'),
(1488, 135, 1124, 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Alpa', 'Alpa', 'Hadir', 'Izin', 'Hadir', '', '', 50, 80, 50, 45, 70, 80, 75, 75, NULL, '2023-01-28 08:51:48', '2023-01-28 09:04:59'),
(1489, 135, 1085, '', 'Hadir', 'Hadir', 'Hadir', '', 'Hadir', 'Hadir', 'Hadir', '', 'Hadir', '', '', 70, 80, 55, 80, 75, 85, 80, 85, NULL, '2023-01-28 08:52:11', '2023-01-28 09:05:09'),
(1490, 135, 1097, '', 'Hadir', 'Hadir', 'Hadir', '', 'Hadir', '', 'Hadir', '', 'Hadir', '', '', 70, 75, 55, 80, 75, 80, 80, 85, NULL, '2023-01-28 08:52:54', '2023-01-28 09:05:19'),
(1491, 125, 1112, 'Hadir', 'Hadir', 'Izin', 'Izin', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 90, 70, 85, 70, 90, 80, 80, 95, NULL, '2023-02-02 13:53:23', '2023-02-02 13:47:27'),
(1492, 125, 1125, 'Izin', 'Alpa', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 85, 85, 85, 70, 85, 80, 75, 90, NULL, '2023-02-02 13:38:31', '2023-02-02 13:47:53'),
(1496, 133, 1113, '', 'Alpa', '', '', '', '', '', '', '', '', '', '', 40, 40, 80, 40, 80, 80, 80, 80, NULL, '2023-01-23 13:00:38', '2022-12-24 09:41:23'),
(1497, 133, 1116, '', 'Alpa', '', '', '', '', '', '', '', '', '', '', 40, 40, 80, 40, 80, 80, 80, 80, NULL, '2023-01-23 12:59:09', '2022-12-24 09:41:30'),
(1498, 136, 1041, 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Alpa', 'Alpa', 'Hadir', 'Hadir', 'Alpa', 'Alpa', 'Alpa', 'Hadir', 50, 50, 60, 60, 50, 50, 50, 90, NULL, '2023-01-13 22:50:34', '2023-01-13 21:42:55'),
(1499, 119, 1102, 'Izin', 'Alpa', 'Alpa', '', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', '', '', '', 30, 0, 0, 70, 90, 90, 80, 86, NULL, '2023-01-31 21:35:29', '2023-01-31 21:16:08'),
(1500, 119, 1110, 'Izin', 'Alpa', 'Alpa', '', 'Hadir', 'Alpa', 'Alpa', 'Alpa', 'Alpa', '', '', '', 50, 50, 100, 0, 90, 80, 70, 80, NULL, '2023-01-31 21:35:42', '2023-01-31 21:16:22'),
(1502, 126, 1094, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 70, 85, 100, 100, 90, 90, 100, 80, NULL, '2023-02-02 12:05:54', NULL),
(1503, 126, 1121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 90, 80, 90, 89, 90, 80, 85, 90, NULL, '2023-02-02 12:06:06', NULL),
(1505, 130, 1118, '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-28 16:37:43'),
(1506, 138, 1104, 'Hadir', 'Hadir', '', '', 'Hadir', 'Hadir', '', '', '', '', '', '', 70, 80, 88, 70, 90, 90, 90, 90, NULL, '2023-01-23 13:11:17', '2022-12-10 18:54:50'),
(1507, 132, 864, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 90, 90, 90, 80, 85, 90, 90, NULL, '2023-02-01 14:07:22', NULL),
(1508, 132, 1045, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 70, 80, 70, 0, 0, 0, 0, 0, NULL, '2023-02-02 15:17:45', NULL),
(1509, 132, 695, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 80, 80, 80, 80, 80, 80, 90, NULL, '2023-02-01 14:07:53', NULL),
(1510, 132, 699, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 80, 80, 75, 80, 80, 80, 90, NULL, '2023-02-01 14:10:08', NULL),
(1511, 132, 725, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 80, 80, 80, 75, 80, 75, 90, NULL, '2023-02-01 14:11:22', NULL),
(1513, 137, 975, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 90, 80, 80, 80, 80, 80, 80, 80, NULL, '2023-02-01 13:26:29', '2023-02-01 13:13:46'),
(1514, 137, 985, 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Izin', 'Izin', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 90, 80, 80, 80, 80, 80, 80, 80, NULL, '2023-02-01 13:24:34', '2023-02-01 13:17:28'),
(1519, 137, 1099, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1520, 130, 756, 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', '', '', '', '', '', '', '', 70, 65, 74, 76, 70, 75, 65, 70, NULL, '2023-02-01 01:02:11', '2023-01-06 16:17:52'),
(1521, 130, 797, 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', '', '', '', '', '', '', '', 70, 72, 50, 78, 70, 75, 70, 80, NULL, '2023-02-01 01:05:52', '2023-01-06 16:15:01'),
(1522, 130, 804, 'Hadir', 'Hadir', 'Hadir', '', '', '', '', '', '', '', '', '', 70, 65, 75, 60, 0, 0, 0, 0, NULL, '2023-02-01 01:05:12', '2022-11-11 16:44:17'),
(1523, 136, 978, 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Izin', 'Hadir', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Hadir', 65, 60, 50, 50, 60, 60, 55, 90, NULL, '2023-01-13 23:01:46', '2023-01-13 21:43:01'),
(1524, 136, 979, 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Izin', 'Izin', 'Izin', 'Hadir', 'Alpa', 'Alpa', 'Alpa', 'Hadir', 85, 80, 80, 85, 100, 100, 85, 90, NULL, '2023-01-13 23:03:37', '2023-01-13 21:43:07'),
(1525, 136, 984, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', 'Alpa', 'Alpa', 'Alpa', 'Hadir', 80, 80, 90, 85, 100, 100, 80, 90, NULL, '2023-01-13 23:04:08', '2023-01-13 21:43:19'),
(1526, 136, 1077, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 100, 75, 80, 90, 100, 100, 85, 93, NULL, '2023-01-13 23:07:06', '2023-01-13 21:43:25'),
(1527, 131, 998, 'Hadir', '', 'Izin', '', '', '', '', '', '', '', '', '', 50, 90, 50, 50, 90, 90, 90, 0, NULL, '2023-01-20 13:35:15', '2022-11-12 07:45:53'),
(1528, 125, 771, 'Alpa', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 80, 85, 85, 70, 80, 80, 80, 90, NULL, '2023-02-02 13:53:03', '2023-02-02 13:48:21'),
(1529, 124, 807, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Izin', 'Hadir', 80, 85, 85, 80, 80, 85, 80, 85, NULL, '2023-02-02 18:27:40', '2023-02-02 17:54:38'),
(1530, 124, 840, 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 80, 80, 80, 80, 75, 80, 80, 80, NULL, '2023-02-02 18:22:02', '2023-02-02 17:57:11'),
(1531, 127, 707, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 100, 90, 80, 95, 90, 90, 90, 90, NULL, '2023-01-17 22:09:39', '2023-01-14 21:56:42'),
(1532, 127, 942, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 100, 80, 85, 80, 80, 80, 85, 90, NULL, '2023-01-21 05:15:52', '2023-01-14 21:56:48'),
(1533, 127, 1042, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', 'Hadir', 92, 90, 90, 88, 92, 95, 88, 90, NULL, '2023-01-21 11:28:13', '2023-01-14 21:56:54'),
(1536, 120, 1123, 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Alpa', 'Alpa', 'Alpa', 'Hadir', '', '', '', '', 30, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-01-31 22:06:37', '2023-01-05 09:40:30'),
(1537, 122, 1083, 'Hadir', 'Hadir', 'Izin', 'Izin', 'Izin', 'Alpa', 'Hadir', 'Alpa', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 75, 75, 75, 90, 90, 90, 89, 90, NULL, '2023-01-24 08:52:57', '2023-01-18 12:54:33'),
(1539, 122, 1106, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 90, 90, 100, 95, 90, 89, 90, 95, NULL, '2023-01-24 08:53:37', '2023-01-18 12:55:08'),
(1540, 111, 1117, 'Hadir', '', '', '', '', '', '', '', '', '', '', '', 85, 85, 90, 85, 80, 85, 70, 90, NULL, '2023-02-02 12:11:29', '2022-11-02 15:29:06'),
(1541, 110, 1120, 'Izin', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-02-02 11:43:27', '2022-10-30 07:53:45'),
(1542, 115, 1082, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', '', '', '', '', '', 95, 95, 95, 95, 90, 90, 90, 90, NULL, '2023-01-26 22:50:38', '2022-12-22 14:35:16'),
(1543, 115, 1092, 'Alpa', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', '', '', '', '', '', '', 85, 85, 90, 90, 85, 85, 85, 85, NULL, '2023-01-26 22:50:38', '2022-12-08 14:48:02'),
(1544, 113, 930, 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Alpa', 'Hadir', '', 85, 80, 85, 80, 90, 85, 80, 90, NULL, '2023-01-22 20:43:49', '2023-01-22 15:49:30'),
(1545, 113, 1072, 'Izin', 'Alpa', 'Alpa', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', 'Alpa', 'Alpa', 'Hadir', '', 75, 75, 100, 80, 90, 85, 80, 90, NULL, '2023-01-22 20:43:59', '2023-01-22 15:50:05'),
(1549, 122, 1129, 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Izin', 'Hadir', 75, 90, 100, 100, 99, 98, 85, 92, NULL, '2023-01-18 13:04:31', '2023-01-18 12:52:47'),
(1550, 110, 721, 'Hadir', '', '', '', '', '', '', '', '', '', '', '', 90, 85, 90, 85, 80, 80, 70, 90, NULL, '2023-02-02 11:46:58', '2022-10-29 14:51:56'),
(1551, 138, 1132, 'Hadir', 'Hadir', '', '', 'Hadir', '', '', '', '', '', '', '', 70, 70, 88, 60, 90, 80, 80, 80, NULL, '2023-01-23 13:04:24', '2022-12-10 18:55:45'),
(1553, 116, 892, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 80, 70, 54, 90, 90, 85, 60, 75, NULL, '2023-01-20 09:06:22', '2023-01-20 08:21:06'),
(1554, 130, 1127, 'Hadir', 'Izin', 'Hadir', '', '', '', '', '', '', '', '', '', 65, 55, 75, 76, 70, 76, 65, 65, NULL, '2023-02-01 01:03:16', '2022-11-11 16:44:29'),
(1555, 130, 1140, 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', '', '', '', '', '', '', '', 70, 65, 60, 65, 70, 75, 60, 70, NULL, '2023-02-01 01:05:21', '2023-01-06 16:14:11'),
(1557, 132, 868, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 80, 80, 75, 80, 80, 80, 90, NULL, '2023-02-01 14:11:57', NULL),
(1559, 119, 1131, 'Hadir', 'Alpa', 'Alpa', '', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', '', '', '', 50, 0, 0, 60, 0, 0, 0, 0, NULL, '2023-01-31 21:32:22', '2023-01-31 19:22:18'),
(1560, 132, 1133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-02-02 15:17:20', NULL),
(1561, 132, 1135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-02-02 15:16:53', NULL),
(1562, 124, 1143, 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Hadir', 'Hadir', 'Izin', 'Izin', 'Izin', 'Alpa', 'Alpa', 'Hadir', 50, 50, 60, 50, 75, 75, 80, 50, NULL, '2023-02-02 18:29:25', '2023-02-02 17:58:12'),
(1563, 129, 1128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1565, 118, 839, 'Izin', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', '', '', '', '', 95, 65, 90, 60, 90, 90, 85, 85, NULL, '2023-02-01 11:01:45', '2022-12-17 10:28:02'),
(1566, 118, 936, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Izin', 'Hadir', '', '', '', '', 90, 65, 90, 40, 90, 90, 85, 50, NULL, '2023-02-01 11:01:49', '2022-12-17 10:25:05'),
(1571, 114, 1144, 'Izin', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Izin', 'Alpa', 'Hadir', 'Hadir', 85, 86, 85, 86, 83, 88, 84, 85, NULL, '2023-01-30 08:58:34', '2023-01-30 09:04:40'),
(1573, 127, 769, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 100, 80, 80, 80, 90, 80, 80, 88, NULL, '2023-01-17 22:35:05', '2023-01-14 21:57:07'),
(1574, 127, 1130, 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Alpa', 'Alpa', 'Hadir', 'Hadir', '', 'Hadir', 'Hadir', 67, 78, 78, 0, 90, 80, 80, 80, NULL, '2023-01-20 18:47:30', '2023-01-14 21:56:05'),
(1578, 140, 1027, 'Alpa', 'Hadir', 'Hadir', '', '', 'Hadir', '', 'Hadir', '', '', '', '', 80, 80, 100, 80, 100, 100, 100, 100, NULL, '2023-01-31 22:11:11', '2023-01-07 16:56:15'),
(1587, 133, 784, '', 'Hadir', '', 'Hadir', '', '', 'Hadir', '', '', '', '', '', 80, 80, 90, 90, 90, 90, 90, 80, NULL, '2023-01-23 12:56:54', '2022-12-24 09:39:31'),
(1593, 140, 1023, 'Alpa', 'Alpa', 'Hadir', '', '', '', '', '', '', '', '', '', 30, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-01-31 22:11:22', '2022-11-12 11:04:35'),
(1594, 140, 1122, 'Hadir', 'Hadir', '', '', '', '', '', '', '', '', '', '', 80, 80, 100, 80, 80, 80, 80, 80, NULL, '2023-01-31 22:17:16', '2022-11-05 18:54:50'),
(1595, 140, 1126, 'Hadir', 'Izin', '', '', '', '', '', '', '', '', '', '', 30, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-01-31 22:11:27', '2022-11-05 18:55:01'),
(1596, 140, 1136, 'Alpa', 'Alpa', '', '', '', '', '', '', '', '', '', '', 30, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-01-31 22:11:32', '2022-11-05 18:55:08'),
(1598, 133, 1007, '', 'Alpa', '', '', '', '', '', '', '', '', '', '', 70, 80, 90, 40, 80, 85, 80, 80, NULL, '2023-01-23 12:58:07', '2022-12-24 09:41:38'),
(1600, 140, 1141, 'Alpa', 'Alpa', 'Hadir', '', '', '', '', '', '', '', '', '', 30, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-01-31 22:11:37', '2022-11-12 19:07:05'),
(1602, 109, 1150, 'Izin', 'Izin', 'Izin', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 90, 89, 95, 80, 90, 91, 90, 90, NULL, '2023-01-24 09:49:30', '2023-01-19 18:21:01'),
(1603, 111, 1146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 80, 85, 90, 80, 85, 70, 80, 90, NULL, '2023-02-02 12:12:40', NULL),
(1604, 118, 1157, '', '', '', '', '', '', '', 'Izin', '', '', '', '', 30, 0, 0, 20, 90, 90, 85, 50, NULL, '2023-02-01 11:01:54', '2022-12-17 10:37:46'),
(1605, 118, 1151, '', '', '', '', '', '', '', 'Izin', '', '', '', '', 70, 70, 0, 20, 90, 90, 85, 50, NULL, '2023-02-01 11:01:59', '2022-12-17 10:35:26'),
(1606, 118, 1152, '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-02-01 11:02:05', '2022-12-17 10:35:30'),
(1607, 118, 1154, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Izin', 'Alpa', 'Hadir', '', '', '', '', 90, 70, 90, 70, 90, 90, 85, 85, NULL, '2023-02-01 11:02:09', '2022-12-17 10:27:07'),
(1610, 107, 1148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 85, 80, 80, 80, 80, 82, 80, 80, NULL, '2023-02-02 14:41:53', NULL),
(1611, 110, 1138, 'Hadir', '', '', '', '', '', '', '', '', '', '', '', 90, 85, 90, 85, 80, 80, 90, 90, NULL, '2023-02-02 11:48:01', '2022-10-29 14:51:44'),
(1614, 124, 879, 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Alpa', 'Alpa', 'Hadir', 90, 80, 85, 90, 90, 90, 80, 90, NULL, '2023-02-02 18:21:05', '2023-02-02 17:58:50'),
(1616, 140, 1038, 'Alpa', 'Alpa', '', '', '', '', '', '', '', '', '', '', 30, 0, 0, 0, 70, 80, 70, 73, NULL, '2023-01-31 22:16:35', '2022-11-05 18:56:48'),
(1617, 140, 1046, 'Alpa', 'Alpa', '', '', '', '', '', '', '', '', '', '', 30, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-01-31 22:11:45', '2022-11-05 18:57:02'),
(1618, 140, 1056, 'Alpa', 'Alpa', '', '', '', '', '', '', '', '', '', '', 30, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-01-31 22:11:49', '2022-11-05 18:57:26'),
(1622, 124, 1147, 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Izin', 'Hadir', 'Hadir', 'Alpa', 'Alpa', 'Izin', 'Hadir', 'Hadir', 90, 85, 85, 90, 85, 85, 80, 90, NULL, '2023-02-02 18:28:43', '2023-02-02 18:02:51'),
(1626, 135, 1163, '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-01-28 08:58:45', '2022-11-03 10:37:09'),
(1627, 135, 735, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', '', 90, 80, 52, 80, 75, 75, 85, 85, NULL, '2023-01-28 08:53:50', '2023-01-28 09:05:30'),
(1629, 140, 1067, 'Alpa', 'Hadir', 'Hadir', '', '', 'Hadir', '', 'Hadir', '', '', '', '', 80, 80, 100, 78, 100, 100, 100, 100, NULL, '2023-01-31 22:10:42', '2023-01-07 16:56:24'),
(1630, 120, 1003, 'Alpa', 'Hadir', 'Alpa', 'Hadir', 'Alpa', 'Alpa', 'Alpa', 'Alpa', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 10, NULL, '2023-01-31 22:07:12', '2023-01-05 09:39:52'),
(1633, 140, 1139, 'Alpa', 'Alpa', '', '', '', '', '', '', '', '', '', '', 30, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-01-31 22:11:54', '2022-11-05 18:57:49'),
(1634, 141, 768, 'Hadir', 'Alpa', 'Hadir', 'Alpa', 'Izin', '', '', '', '', '', '', '', 50, 65, 100, 40, 60, 60, 83, 60, NULL, '2023-01-29 14:40:52', '2022-11-29 13:39:22'),
(1635, 141, 842, 'Hadir', 'Alpa', 'Alpa', 'Alpa', 'Alpa', '', '', '', '', '', '', '', 20, 20, 100, 20, 60, 60, 80, 60, NULL, '2023-01-29 14:41:32', '2022-11-29 13:39:29'),
(1636, 141, 1063, 'Hadir', 'Hadir', 'Hadir', 'Alpa', '', '', '', '', '', '', '', '', 70, 67, 100, 60, 60, 60, 82, 60, NULL, '2023-01-29 14:43:05', '2022-11-29 13:38:50'),
(1637, 141, 1137, 'Hadir', 'Hadir', 'Hadir', 'Alpa', '', '', '', '', '', '', '', '', 70, 68, 100, 70, 60, 60, 79, 60, NULL, '2023-01-29 14:44:16', '2022-11-29 13:38:42'),
(1638, 141, 1167, 'Hadir', 'Alpa', 'Hadir', 'Alpa', '', '', '', '', '', '', '', '', 40, 40, 100, 40, 60, 60, 69, 60, NULL, '2023-01-29 14:45:18', '2022-11-29 13:38:35'),
(1639, 141, 778, 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', '', '', '', '', '', '', '', 80, 73, 100, 70, 60, 60, 84, 60, NULL, '2023-01-29 14:46:30', '2022-11-29 13:39:44'),
(1640, 141, 884, 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', '', '', '', '', '', '', '', 80, 70, 100, 72, 60, 60, 76, 60, NULL, '2023-01-29 14:47:29', '2022-11-29 13:39:54'),
(1641, 141, 918, 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', '', '', '', '', '', '', '', 80, 73, 100, 75, 60, 60, 70, 60, NULL, '2023-01-29 14:49:41', '2022-11-29 13:40:06'),
(1642, 141, 1080, 'Hadir', 'Hadir', 'Hadir', 'Alpa', '', '', '', '', '', '', '', '', 70, 75, 100, 70, 60, 60, 82, 60, NULL, '2023-01-29 14:51:00', '2022-11-29 13:37:24'),
(1643, 141, 1081, 'Hadir', 'Hadir', 'Hadir', 'Alpa', '', '', '', '', '', '', '', '', 70, 69, 100, 70, 60, 60, 68, 60, NULL, '2023-01-29 14:56:33', '2022-11-29 13:37:16'),
(1644, 111, 1165, 'Hadir', '', '', '', '', '', '', '', '', '', '', '', 85, 85, 90, 85, 60, 80, 60, 90, NULL, '2023-02-02 12:13:51', '2022-11-02 15:29:17'),
(1646, 107, 1160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 79, 80, 80, 80, 80, 82, 80, 80, NULL, '2023-02-02 14:42:14', NULL),
(1647, 107, 1162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 80, 80, 80, 80, 82, 82, 80, 80, NULL, '2023-02-02 14:42:30', NULL),
(1648, 107, 1166, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 80, 80, 80, 80, 82, 85, 80, 80, NULL, '2023-02-02 14:43:35', NULL),
(1650, 142, 764, 'Alpa', 'Alpa', 'Hadir', 'Alpa', 'Hadir', 'Hadir', 'Alpa', 'Alpa', 'Izin', '', '', '', 95, 95, 100, 80, 95, 90, 70, 0, NULL, '2023-01-22 23:56:37', '2023-01-15 05:05:53'),
(1651, 142, 1161, 'Alpa', 'Alpa', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', '', '', '', 95, 95, 100, 95, 90, 95, 95, 90, NULL, '2023-01-22 23:58:10', '2023-01-15 05:01:25'),
(1653, 142, 895, 'Hadir', 'Hadir', 'Izin', 'Alpa', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Alpa', '', '', '', 95, 90, 100, 90, 90, 95, 95, 70, NULL, '2023-01-21 18:01:09', '2023-01-15 04:59:35'),
(1654, 142, 1145, 'Hadir', 'Hadir', 'Izin', 'Alpa', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', '', '', '', 95, 90, 100, 90, 95, 95, 95, 70, NULL, '2023-01-21 18:01:18', '2023-01-15 04:59:12'),
(1657, 142, 1169, 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Hadir', 'Hadir', 'Alpa', 'Alpa', 'Alpa', '', '', '', 50, 50, 100, 50, 95, 85, 80, 70, NULL, '2023-01-21 18:02:12', '2023-01-15 05:02:43'),
(1658, 142, 1179, 'Izin', 'Izin', 'Izin', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Izin', '', '', '', 90, 50, 100, 70, 0, 0, 0, 0, NULL, '2023-01-21 18:04:34', '2023-01-15 05:02:58'),
(1659, 142, 1171, 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Hadir', 'Hadir', 'Alpa', 'Alpa', 'Alpa', '', '', '', 50, 50, 100, 50, 95, 85, 80, 70, NULL, '2023-01-21 18:02:55', '2023-01-15 05:03:10'),
(1660, 142, 1175, 'Alpa', 'Alpa', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', '', '', 95, 95, 100, 95, 90, 95, 95, 70, NULL, '2023-01-22 23:55:49', '2023-01-15 05:01:01'),
(1661, 142, 1176, 'Hadir', 'Hadir', 'Alpa', 'Alpa', 'Hadir', 'Hadir', 'Alpa', 'Alpa', 'Alpa', '', '', '', 70, 50, 0, 50, 0, 0, 0, 0, NULL, '2023-01-22 23:59:13', '2023-01-15 05:03:22'),
(1663, 142, 1177, 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', '', '', 95, 95, 100, 95, 90, 95, 90, 70, NULL, '2023-01-21 18:04:02', '2023-01-15 05:00:35'),
(1664, 124, 1170, 'Hadir', 'Hadir', 'Alpa', 'Izin', 'Hadir', 'Izin', 'Izin', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', 50, 50, 85, 50, 70, 70, 80, 50, NULL, '2023-02-02 18:17:38', '2023-02-02 18:05:29'),
(1665, 124, 1164, 'Alpa', 'Alpa', 'Alpa', 'Izin', 'Izin', 'Hadir', 'Hadir', 'Izin', 'Izin', 'Alpa', 'Alpa', 'Hadir', 50, 50, 70, 50, 70, 70, 80, 50, NULL, '2023-02-02 18:18:39', '2023-02-02 18:06:33'),
(1666, 129, 1111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 100, 70, 100, 100, 70, 100, 70, NULL, '2023-01-28 05:54:03', NULL),
(1668, 132, 777, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 80, 80, 80, 80, 70, 0, 0, 90, NULL, '2023-02-02 15:14:55', NULL),
(1669, 132, 855, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 80, 75, 80, 75, 85, 82, 85, 90, NULL, '2023-02-01 14:15:12', NULL),
(1670, 142, 1181, 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Hadir', 'Hadir', 'Alpa', 'Alpa', 'Alpa', '', '', '', 50, 50, 0, 50, 0, 0, 0, 0, NULL, '2023-01-22 23:58:57', '2023-01-15 05:03:37'),
(1671, 142, 1182, 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Hadir', 'Hadir', 'Alpa', 'Alpa', 'Hadir', '', '', '', 90, 90, 100, 80, 0, 95, 95, 50, NULL, '2023-01-21 09:19:28', '2023-01-15 05:03:53'),
(1676, 109, 1178, 'Izin', 'Izin', 'Izin', 'Izin', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Izin', 'Izin', 'Hadir', 90, 80, 79, 77, 90, 91, 91, 90, NULL, '2023-01-24 09:50:10', '2023-01-19 18:23:00'),
(1677, 109, 843, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 90, 80, 81, 75, 88, 91, 90, 90, NULL, '2023-01-24 09:50:23', NULL),
(1678, 120, 991, 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Alpa', 'Alpa', 'Alpa', '', '', '', '', 10, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-01-31 22:07:03', '2023-01-05 09:39:58'),
(1679, 128, 973, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 100, 85, 100, 100, 100, 100, 90, NULL, '2023-01-13 09:21:10', NULL),
(1680, 128, 1153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 100, 75, 100, 100, 100, 100, 90, NULL, '2023-01-13 09:21:23', NULL),
(1681, 124, 838, 'Izin', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Alpa', 'Izin', 'Hadir', 'Hadir', 'Hadir', 80, 80, 85, 80, 75, 80, 80, 80, NULL, '2023-02-02 18:23:08', '2023-02-02 18:08:29'),
(1682, 124, 1032, 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Alpa', 'Alpa', 'Alpa', 50, 50, 70, 50, 70, 70, 80, 50, NULL, '2023-02-02 18:19:12', '2023-02-02 18:09:48'),
(1683, 123, 1158, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', '', 'Hadir', 'Hadir', 87, 80, 90, 85, 86, 80, 85, 90, NULL, '2023-01-23 21:02:33', '2023-01-23 18:03:15'),
(1684, 128, 911, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 100, 75, 100, 100, 100, 100, 95, NULL, '2023-01-13 09:21:50', NULL),
(1685, 119, 1134, 'Alpa', 'Hadir', 'Alpa', '', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 'Alpa', '', '', '', 30, 30, 0, 50, 0, 0, 0, 0, NULL, '2023-01-31 21:32:55', '2023-01-31 19:21:35'),
(1686, 123, 1013, '', '', '', '', 'Alpa', 'Hadir', 'Alpa', 'Hadir', 'Hadir', '', 'Hadir', 'Hadir', 65, 65, 90, 80, 86, 75, 80, 90, NULL, '2023-01-23 20:37:10', '2023-01-23 18:03:08'),
(1687, 136, 909, '', '', '', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', 'Hadir', 85, 70, 75, 85, 100, 100, 85, 75, NULL, '2023-01-13 23:08:45', '2023-01-13 21:43:31'),
(1688, 116, 951, 'Izin', 'Alpa', 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Alpa', 'Hadir', 'Alpa', 'Alpa', 'Hadir', 'Hadir', 60, 70, 52, 80, 88, 90, 95, 85, NULL, '2023-01-20 08:44:44', '2023-01-20 08:23:27'),
(1690, 134, 853, 'Hadir', 'Hadir', 'Izin', 'Izin', 'Hadir', '', '', '', '', '', '', '', 80, 90, 85, 80, 85, 85, 70, 90, NULL, '2023-01-26 12:03:44', '2022-12-16 22:05:39'),
(1691, 141, 1149, '', '', 'Izin', 'Alpa', '', '', '', '', '', '', '', '', 20, 0, 100, 0, 60, 60, 0, 60, NULL, '2023-01-29 14:57:38', '2022-11-29 13:36:56'),
(1694, 112, 867, 'Hadir', 'Hadir', 'Izin', 'Alpa', 'Hadir', 'Alpa', 'Hadir', 'Hadir', 'Alpa', 'Hadir', 'Hadir', 'Hadir', 65, 65, 80, 70, 79, 79, 65, 70, NULL, '2023-02-02 11:19:50', '2023-02-01 19:57:02'),
(1695, 122, 1172, 'Izin', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 75, 86, 100, 100, 95, 94, 87, 96, NULL, '2023-01-18 13:06:03', '2023-01-18 12:52:15'),
(1696, 141, 919, 'Hadir', 'Hadir', 'Hadir', 'Alpa', 'Hadir', '', '', '', '', '', '', '', 80, 73, 100, 73, 60, 60, 68, 60, NULL, '2023-01-29 14:55:25', '2022-11-29 13:40:21'),
(1697, 129, 995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1698, 137, 1185, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1699, 112, 813, 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Izin', 'Hadir', 75, 80, 85, 75, 80, 80, 80, 88, NULL, '2023-02-02 11:53:01', '2023-02-01 19:57:33'),
(1700, 141, 730, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 95, 75, 100, 80, 60, 60, 85, 85, NULL, '2023-01-29 14:52:29', NULL),
(1701, 122, 1173, 'Izin', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 75, 90, 100, 100, 92, 98, 82, 97, NULL, '2023-01-18 13:07:48', '2023-01-18 12:51:32'),
(1702, 111, 757, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 90, 85, 90, 85, 75, 90, 80, 90, NULL, '2023-02-02 12:14:59', NULL),
(1703, 111, 1183, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-02-02 12:15:49', NULL),
(1704, 142, 929, 'Alpa', 'Alpa', 'Hadir', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', '', '', '', 95, 95, 100, 95, 0, 95, 95, 70, NULL, '2023-01-21 09:17:20', '2023-01-15 05:01:52'),
(1705, 129, 956, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1706, 118, 883, '', '', '', '', '', '', '', 'Izin', '', '', '', '', 20, 0, 0, 20, 90, 90, 85, 50, NULL, '2023-02-01 11:02:14', '2022-12-17 10:34:11'),
(1707, 122, 1030, 'Izin', 'Izin', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 80, 80, 85, 90, 89, 90, 89, 90, NULL, '2023-01-24 08:57:16', '2023-01-18 12:50:49'),
(1709, 111, 1098, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 70, 80, 80, 85, 80, 70, 90, 90, NULL, '2023-02-02 12:17:44', NULL),
(1710, 111, 1184, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-02-02 12:16:09', NULL),
(1711, 130, 904, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 55, 60, 65, 70, 75, 65, 65, NULL, '2023-02-01 01:05:35', NULL),
(1712, 130, 1155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1713, 132, 776, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-02-02 15:17:06', NULL),
(1714, 127, 905, '', '', '', '', '', '', '', 'Hadir', 'Alpa', 'Alpa', 'Alpa', 'Alpa', 25, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-01-17 22:07:50', '2023-01-14 21:54:40'),
(1716, 127, 1069, 'Hadir', 'Hadir', '', '', '', '', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 67, 80, 78, 80, 90, 80, 80, 83, NULL, '2023-01-18 14:36:45', '2023-01-17 21:41:50'),
(1717, 131, 799, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 98, 90, 90, 95, 95, 90, 90, 95, NULL, '2023-01-12 09:40:36', NULL),
(1718, 107, 962, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 79, 80, 80, 80, 85, 82, 80, 80, NULL, '2023-02-02 14:44:35', NULL),
(1719, 107, 964, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 78, 80, 80, 80, 83, 82, 80, 80, NULL, '2023-02-02 14:44:46', NULL),
(1720, 131, 901, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 80, 90, 60, 95, 95, 90, 90, 90, NULL, '2023-01-16 16:40:30', NULL),
(1721, 128, 1156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 100, 75, 100, 100, 100, 100, 85, NULL, '2023-01-18 08:22:17', NULL),
(1722, 122, 949, 'Alpa', 'Izin', 'Izin', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Hadir', 'Izin', 'Hadir', 'Izin', 'Hadir', 80, 90, 92, 95, 95, 90, 89, 95, NULL, '2023-01-24 08:58:23', '2023-01-18 12:50:08'),
(1723, 107, 935, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 80, 80, 80, 80, 85, 82, 80, 80, NULL, '2023-02-02 14:45:08', NULL),
(1724, 107, 963, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 79, 80, 80, 80, 80, 83, 79, 80, NULL, '2023-02-02 14:47:27', NULL),
(1725, 107, 1073, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 78, 80, 80, 80, 80, 83, 80, 80, NULL, '2023-02-02 14:45:28', NULL),
(1726, 128, 1168, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 100, 50, 100, 100, 100, 100, 85, NULL, '2023-01-18 11:16:56', NULL),
(1727, 141, 922, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 72, 70, 100, 70, 60, 60, 78, 60, NULL, '2023-01-29 14:53:40', NULL),
(1728, 140, 1159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, 70, 100, 80, 0, 90, 80, 56, NULL, '2023-01-31 22:19:48', NULL),
(1729, 118, 1043, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 70, 40, 80, 20, 90, 90, 85, 85, NULL, '2023-02-01 12:09:27', NULL),
(1730, 140, 1186, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2023-02-02 09:32:55', NULL),
(1731, 110, 1115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 85, 85, 90, 85, 80, 75, 90, 90, NULL, '2023-02-02 12:28:49', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE `laporan` (
  `id_laporan` int NOT NULL,
  `id_jadwal_tutor` int DEFAULT NULL,
  `no_pertemuan` int DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jumlah_peserta` int DEFAULT NULL,
  `hadir` int DEFAULT NULL,
  `izin` int DEFAULT NULL,
  `absen` int DEFAULT NULL,
  `materi` text COLLATE utf8mb4_general_ci,
  `keterangan_laporan` text COLLATE utf8mb4_general_ci,
  `foto_laporan` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `laporan`
--

INSERT INTO `laporan` (`id_laporan`, `id_jadwal_tutor`, `no_pertemuan`, `tanggal`, `jumlah_peserta`, `hadir`, `izin`, `absen`, `materi`, `keterangan_laporan`, `foto_laporan`) VALUES
(7, 104, 1, '2022-08-09', 5, 5, 0, 0, 'Ta\'aruf & pretes', '-', 'IMG_20220809_165421.jpg'),
(8, 104, 2, '2022-08-18', 5, 5, 0, 0, 'Belajar Alquran dan makhrojil huruf bibir', 'Tausiyah yang di sampaikan pada pertemuan ke dua yaitu tentang sabar, dan pertemuan yang kedua Alhamdulillah terlaksana dengan baik dan lancar', 'IMG_20220818_165224.jpg'),
(9, 104, 3, '2022-09-01', 6, 2, 4, 0, 'Syahadatain dan makhrojil huruf tenggorokan ', 'Alhamdulillah berjalan dengan lancar', 'IMG_20220901_172049.jpg'),
(10, 104, 4, '2022-09-15', 6, 6, 0, 0, 'Ma\'rifatullah , makhrojil huruf lidah dan idzhar', 'Alhamdulillah berjalan dengan lancar', 'IMG_20220915_153843.jpg'),
(11, 129, 1, '2022-10-25', 14, 9, 0, 5, 'pertemuan awal, kontrak bbq', '', 'WhatsApp Image 2022-10-25 at 07.16.48.jpeg'),
(12, 129, 1, '2022-10-25', 14, 9, 0, 5, 'pertemuan awal, kontrak bbq', '', 'WhatsApp Image 2022-10-25 at 07.16.48_1.jpeg'),
(13, 113, 1, '2022-10-26', 14, 10, 3, 1, 'Taaruf', '-', 'IMG-20221026-WA0003.jpg'),
(14, 141, 1, '2022-11-02', 12, 12, 0, 0, 'Kontrak BBQ', 'Alhamdulillah terlaksana dengan baik', 'IMG-20221102-WA0002.jpg'),
(15, 141, 2, '2022-11-08', 12, 8, 0, 4, 'Tajwid ', 'Alhamdulillah terlaksana dengan baik', 'IMG-20221108-WA0012.jpg'),
(16, 141, 3, '2022-11-15', 15, 12, 1, 2, 'Belajar  Membaca Al-Qur\'an', 'Alhamdulillah terlaksana dengan baik', 'IMG-20221115-WA0003.jpg'),
(17, 142, 1, '2022-12-11', 13, 4, 1, 8, 'Ta\'aaruf, Tatib BBQ, Mutabaah', 'Lancar', 'LaporanGelombang-2-082119-142'),
(18, 142, 2, '2022-11-19', 13, 2, 1, 10, 'Pengenalan Al-Qur\'an, dan Makhorijul Huruf', 'Lancar', 'LaporanGelombang-2-082404-142'),
(19, 142, 3, '2022-12-10', 13, 5, 3, 5, 'Makhorijul Huruf dan Qolqolah', 'Lancar', 'LaporanGelombang-2-082804-142'),
(20, 142, 4, '2022-12-17', 13, 2, 6, 5, 'Makhorijul Huruf dan Tahsin Al-Fatihah', 'Lancar', 'LaporanGelombang-2-083311-142'),
(21, 142, 5, '2022-12-24', 13, 13, 0, 0, 'Tutor Berhalangan Hadir', '', 'LaporanGelombang-2-083600-142'),
(22, 142, 6, '2022-12-24', 13, 13, 0, 0, 'Tutor Berhalangan Hadir', '', 'LaporanGelombang-2-083636-142'),
(23, 142, 7, '2022-12-29', 13, 6, 0, 7, 'Belajar AL-Qur\'an pada modul dan Tahsin Alfatihah', 'Lancar', 'LaporanGelombang-2-084013-142'),
(24, 142, 8, '2023-01-02', 13, 6, 0, 7, 'Hukum Bacaan Nun Mati / Tanwin, Hukum Qolqolah, Tanda waqaf', 'Lancar', 'LaporanGelombang-2-084347-142'),
(25, 142, 9, '2023-01-07', 13, 6, 2, 5, 'Thaharah', 'Lancar', 'LaporanGelombang-2-084748-142'),
(26, 142, 10, '2023-01-08', 13, 11, 0, 2, 'UTS', 'Lancar', 'LaporanGelombang-2-085738-142');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peserta`
--

CREATE TABLE `peserta` (
  `id_peserta` int NOT NULL,
  `npm_peserta` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `nama_peserta` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nomor_wa` varchar(14) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jk` varchar(13) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_jurusan` char(4) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_kelas` int DEFAULT NULL,
  `dosen_id` int DEFAULT NULL,
  `kelancaran_mengaji` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jadwal_kuliah` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gelombang` int DEFAULT NULL,
  `password` varchar(50) COLLATE utf8mb4_general_ci DEFAULT '123',
  `level` int DEFAULT '3',
  `pilgan` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `makhroj` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tajwid` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ket` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peserta`
--

INSERT INTO `peserta` (`id_peserta`, `npm_peserta`, `nama_peserta`, `nomor_wa`, `jk`, `id_jurusan`, `id_kelas`, `dosen_id`, `kelancaran_mengaji`, `jadwal_kuliah`, `keterangan`, `gelombang`, `password`, `level`, `pilgan`, `makhroj`, `tajwid`, `ket`) VALUES
(692, '22412012', 'Salma Putri Sholihah ', '088747902704', 'Perempuan', '412', 1, 8, 'Lancar', 'Screenshot_20220927_172021.jpg', 'lunas', 2, 'Aingmaung1.', 3, NULL, NULL, NULL, NULL),
(693, '22412006', 'Ananda Sella Dinata', '085383885403', 'Perempuan', '412', 1, 8, 'Terbata Bata', 'Screenshot_20220924_215532.jpg', 'lunas', 2, '22412006', 3, NULL, NULL, NULL, NULL),
(694, '22412005', 'Merly Gustina ', '081274843899', 'Perempuan', '412', 1, 8, 'Lancar', 'IMG_20221001_112615.jpg', 'lunas', 2, '22412005', 3, NULL, NULL, NULL, NULL),
(695, '22412032', 'Muhammad Ridho Al Farizi', '0887437125757', 'Laki-Laki', '412', 1, 8, 'Lancar', 'Screenshot_2022-09-27-08-21-56-12_f541918c7893c52dbd1ee5d319333948.jpg', 'lunas', 2, '#Ridhoikutbbqditekno2626', 3, NULL, NULL, NULL, NULL),
(696, '22412017', 'Novilya M Andini', '0895349941207', 'Perempuan', '412', 1, 8, 'Lancar', 'jadwal kuliah.png', 'lunas', 2, '22412017', 3, NULL, NULL, NULL, NULL),
(697, '22412009', 'Refalina Aprilia', '089631906779', 'Perempuan', '412', 1, 8, 'Lancar', 'IMG_20220924_163828.jpg', 'lunas', 2, '22412009', 3, NULL, NULL, NULL, NULL),
(698, '22412028', 'Jaldi M Hafid', '085708849355', 'Laki-Laki', '412', 1, 1, 'Terbata Bata', '307CD58A-2533-4FD4-8184-3AAB39988FA3.jpeg', 'lunas', 2, '22412028', 3, NULL, NULL, NULL, NULL),
(699, '22412003', 'Afif Ainul Yaqin', '089623713838', 'Laki-Laki', '412', 1, 8, 'Lancar', 'AEC4CB78-C941-4572-A6E5-C1764C36EBF9.png', 'lunas', 2, 'Afifainulyaqin13', 3, NULL, NULL, NULL, NULL),
(700, '22412008', 'HADI SANTOSO', '087898621510', 'Laki-Laki', '412', 1, 8, 'Lancar', 'DEA1284B-EF1F-4C0E-97A8-80AAECA93B9D.jpeg', 'lunas', 2, '22412008', 3, NULL, NULL, NULL, NULL),
(701, '22311044', 'FADIL ARROSYID FAYYADH ', '085789623387', 'Laki-Laki', '311', 3, 1, 'Terbata Bata', 'Screenshot_20220923-141340.jpg', 'lunas', 2, 'Sidofa123', 3, NULL, NULL, NULL, NULL),
(702, '22412024', 'Gita Candra Mukti', '085839845350', 'Perempuan', '412', 1, 9, 'Terbata Bata', 'Screenshot (6).png', 'lunas', 2, '22412024', 3, NULL, NULL, NULL, NULL),
(703, '22412018', 'Sari Yuliyani ', '082279803331', 'Perempuan', '412', 1, 9, 'Terbata Bata', 'Screenshot_2022-09-26-18-43-31-909_com.google.android.apps.docs.png', 'lunas', 2, '22412018', 3, NULL, NULL, NULL, NULL),
(704, '22412019', 'SUTRISNO', '085783001835', 'Laki-Laki', '412', 1, 9, 'Terbata Bata', 'IMG-20221004-WA0005.jpg', 'lunas', 2, '22412019', 3, NULL, NULL, NULL, NULL),
(705, '22315007', 'Ananda Maulana Firdaus ', '085769521705', 'Laki-Laki', '315', 1, 9, 'Terbata Bata', 'Screenshot_20221004_121535[1].jpg', 'lunas', 2, '@Ananda08', 3, NULL, NULL, NULL, NULL),
(706, '22311086', 'MUHAMMAD PUJANGGA ALFAREZA', '0895321604395', 'Laki-Laki', '311', 3, 9, 'Terbata Bata', 'IMG_20221004_123820.jpg', 'lunas', 2, 'manusiaalam', 3, NULL, NULL, NULL, NULL),
(707, '22311061 ', 'Doli Indra Harahap ', '081279995801', 'Laki-Laki', '311', 2, 9, 'Terbata Bata', 'Screenshot_20221004-123733~2.png', 'lunas', 2, 'Doliindra392@', 3, NULL, NULL, NULL, NULL),
(708, '22412013', 'Putri Ambarwati ', '081366531356', 'Perempuan', '412', 1, 9, 'Lancar', 'IMG-20221004-WA0006.jpg', 'lunas', 2, '22412013', 3, NULL, NULL, NULL, NULL),
(709, '22412014', 'Nabela Softia Anggraini ', '085896850750', 'Perempuan', '412', 1, 9, 'Terbata Bata', 'IMG-20220929-WA0024.jpg', 'lunas', 2, '22412014', 3, NULL, NULL, NULL, NULL),
(710, '22412040', 'Hany sabrina', '085369652715', 'Perempuan', '412', 1, 9, 'Lancar', 'Screenshot_20220924-160824_Samsung Internet.jpg', 'lunas', 2, '22412040', 3, NULL, NULL, NULL, NULL),
(711, '22412015', 'CLAUDIA BELLENICA', '0895397894373', 'Perempuan', '412', 1, 9, 'Terbata Bata', 'IMG_20221004_133123.jpg', 'lunas', 2, 'Claudia28bellenica', 3, NULL, NULL, NULL, NULL),
(712, '22411210', 'Antika Nilam Cahya ', '0895600772333', 'Perempuan', '411', 5, 9, 'Terbata Bata', 'IMG_20221004_134034.jpg', 'lunas', 2, '22411210', 3, NULL, NULL, NULL, NULL),
(713, '22412030', 'Ridha Hayati ', '08551682844', 'Perempuan', '412', 1, 9, 'Terbata Bata', 'IMG_20220926_164734.jpg', 'lunas', 2, 'Rdhahay*15_', 3, NULL, NULL, NULL, NULL),
(714, '22311052', 'Heri Aryanto', '083182700338', 'Laki-Laki', '311', 15, 9, 'Terbata Bata', 'Screenshot_2022-09-27-18-23-47-328_cn.wps.moffice_eng.jpg', 'lunas', 2, '22311052', 3, NULL, NULL, NULL, NULL),
(715, '22412038', 'DIMAS AJI PRATAMA ', '081369477631', 'Laki-Laki', '412', 1, 9, 'Lancar', 'Screenshot_20221004_171046.jpg', 'lunas', 2, 'Dimasaji26022002', 3, NULL, NULL, NULL, NULL),
(716, '22311050', 'Finuri Zamzahariro ', '085273495364', 'Perempuan', '311', 15, 9, 'Terbata Bata', 'Screenshot_20221004-190041.jpg', 'lunas', 2, '22311050', 3, NULL, NULL, NULL, NULL),
(717, '22315020', 'Ahmat Tohir', '082269561633', 'Laki-Laki', '315', 1, 9, 'Lancar', 'matkul semesret 1 - S1 Teknik Elektro (2)_page-0001.jpg', 'lunas', 2, '123321', 3, NULL, NULL, NULL, NULL),
(718, '22311059', 'Rindah Okta Renza', '0895701224069', 'Perempuan', '311', 15, 9, 'Lancar', 'IMG20221005110047.jpg', 'lunas', 2, '22311059', 3, NULL, NULL, NULL, NULL),
(719, '22311047', 'Desi Intan Padila ', '081367893701', 'Perempuan', '311', 15, 9, 'Lancar', 'IMG_20221004_083303.jpg', 'lunas', 2, '22311047', 3, NULL, NULL, NULL, NULL),
(720, '22113006', 'Istikomah', '089524428624', 'Perempuan', '113', 1, 9, 'Terbata Bata', 'Screenshot_2022-09-23-17-08-24-067_com.google.android.apps.docs.jpg', 'lunas', 2, '22113006', 3, NULL, NULL, NULL, NULL),
(721, '22113003', 'Qonita Vidina ', '0895605057284', 'Perempuan', '113', 1, 9, 'Terbata Bata', 'IMG-20220924-WA0023.jpg', 'lunas', 2, '22113003', 3, NULL, NULL, NULL, NULL),
(722, '22113001', 'Nidyanti Ruwaina', '08989176674', 'Perempuan', '113', 1, 9, 'Terbata Bata', 'IMG-20220924-WA0030.jpg', 'lunas', 2, '22113001', 3, NULL, NULL, NULL, NULL),
(723, '22113004', 'Dea irenia', '085609128351', 'Perempuan', '113', 1, 9, 'Terbata Bata', 'ecd2955c-124b-484e-a777-70c8ae578851.JPG', 'lunas', 2, '22113004', 3, NULL, NULL, NULL, NULL),
(724, '22113010', 'Fara Diva Tabitha', '085656872761', 'Perempuan', '113', 1, 9, 'Lancar', 'Screenshot_20220924_103333.jpg', 'lunas', 2, '22113010', 3, NULL, NULL, NULL, NULL),
(725, '22412027', 'RIZKY ALDY PUTRA', '0895639391236', 'Laki-Laki', '412', 1, 9, 'Lancar', 'Screenshot_20221005-153433_Drive.jpg', 'lunas', 2, '22412027', 3, NULL, NULL, NULL, NULL),
(726, '22315029', 'Bagus Roudhotul Firdaus ', '08989170960', 'Laki-Laki', '315', 1, 9, 'Terbata Bata', 'IMG_20221003_184426.jpg', 'lunas', 2, '22315029', 3, NULL, NULL, NULL, NULL),
(727, '22412016', 'Trie Putri Rachmawati ', '083844760220', 'Perempuan', '412', 1, 9, 'Terbata Bata', 'IMG_20221006_064406.jpg', NULL, 2, '22412016', 3, NULL, NULL, NULL, NULL),
(728, '22412036', 'Nazwa Arif', '085664943283', 'Perempuan', '412', 1, 9, 'Lancar', '6042F5C7-5D9E-4C63-9936-75F8F43978F2.png', 'lunas', 2, '22412036', 3, NULL, NULL, NULL, NULL),
(729, '22412007', 'Anggi Ismanu', '085764172262', 'Laki-Laki', '412', 1, 9, 'Terbata Bata', 'Screenshot_2022-09-27-11-35-10-089_com.google.android.apps.docs.jpg', 'lunas', 2, 'Anggi 150704', 3, NULL, NULL, NULL, NULL),
(730, '22112003', 'Ahda Zahrotun Hasanah ', '085380183071', 'Perempuan', '112', 1, 9, 'Lancar', 'Screenshot_20221006_105727.jpg', 'lunas', 2, '22112003', 3, NULL, NULL, NULL, NULL),
(731, '22411131', 'RIWA AFRIAN DINATA', '082183184743', 'Laki-Laki', '411', 2, 9, 'Lancar', 'Screenshot_20220924_170037.jpg', 'lunas', 2, '22411131', 3, NULL, NULL, NULL, NULL),
(732, '22412037', 'Sabila Rahmadhani', '087798019526', 'Perempuan', '412', 1, 9, 'Terbata Bata', 'Screenshot_2022-09-24-16-09-30-01_e2d5b3f32b79de1d45acd1fad96fbb0f.jpg', 'lunas', 2, '22412037', 3, NULL, NULL, NULL, NULL),
(733, '22412021', 'RIYONO ASNAN', '081977872882', 'Laki-Laki', '412', 1, 9, 'Terbata Bata', 'Screenshot_2022-10-06-13-26-16-01_e2d5b3f32b79de1d45acd1fad96fbb0f.jpg', 'lunas', 2, '22412021', 3, NULL, NULL, NULL, NULL),
(734, '22412033', 'Alaric Almubarak Marsendo ', '089635636809', 'Laki-Laki', '412', 1, 9, 'Terbata Bata', 'IMG-20221004-WA0006_1.jpg', 'lunas', 2, 'Kau@l@y7', 3, NULL, NULL, NULL, NULL),
(735, '22412011', 'ABIMANYU ALFA NUGROHO', '088268351438', 'Laki-Laki', '412', 1, 9, 'Terbata Bata', 'Screenshot_20221006-133055.png', 'lunas', 2, 'lkiomn23232603', 3, NULL, NULL, NULL, NULL),
(736, '22315010', 'APKA SILPIAWAN ', '082180354820', 'Laki-Laki', '315', 1, 9, 'Lancar', 'Screenshot_2022-10-06-14-28-12-81_e2d5b3f32b79de1d45acd1fad96fbb0f.jpg', 'lunas', 2, '22315010', 3, NULL, NULL, NULL, NULL),
(737, '22315015', 'Zahwa khoirunnisa ', '085839068725', 'Perempuan', '315', 1, 9, 'Terbata Bata', 'Screenshot_2022-10-06-11-46-32-03_c37d74246d9c81aa0bb824b57eaf7062.png', 'lunas', 2, '22315015', 3, NULL, NULL, NULL, NULL),
(738, '22412029', 'Yossida Aulia Risandy', '082278024700', 'Perempuan', '412', 1, 9, 'Lancar', 'Screenshot_2022-09-26-08-43-40-62_439a3fec0400f8974d35eed09a31f914.jpg', 'lunas', 2, 'Akuntans1-y', 3, NULL, NULL, NULL, NULL),
(739, '22411217', 'Munib ansori ', '081367336177', 'Laki-Laki', '411', 5, 9, 'Lancar', 'jadwal teknokrat.jpg', 'lunas', 2, 'Psht1922', 3, NULL, NULL, NULL, NULL),
(740, '22411142', 'ILHAM YUSUFA', '085709070132', 'Laki-Laki', '411', 3, 9, 'Terbata Bata', '6D2E4986-370F-4414-9771-82D67A9AE31B.png', 'lunas', 2, '22411142', 3, NULL, NULL, NULL, NULL),
(741, '22411202', 'JAINUDIN', '085709208295', 'Laki-Laki', '411', 3, 9, 'Terbata Bata', 'IMG_20221006_152735.jpg', 'lunas', 2, '22411202', 3, NULL, NULL, NULL, NULL),
(742, '22316011', 'Aji priyangga ', '0895621434052', 'Laki-Laki', '316', 1, 9, 'Terbata Bata', 'Screenshot_2022-09-24-19-00-36-56_439a3fec0400f8974d35eed09a31f914.jpg', 'lunas', 2, '22316011', 3, NULL, NULL, NULL, NULL),
(743, '22316014', 'Deny Kurnia Hermawan ', '083168910138', 'Laki-Laki', '316', 1, 9, 'Lancar', 'Screenshot_20221003_085953.jpg', 'lunas', 2, '22316014', 3, NULL, NULL, NULL, NULL),
(744, '22311053', 'Irfan Ahmad Dani ', '085268564710', 'Laki-Laki', '311', 15, 9, 'Terbata Bata', 'JADWAL KULIAH SI 22 DX.png', NULL, 2, '22311053', 3, NULL, NULL, NULL, NULL),
(745, '22411011', 'Rizki Taufik Akbar', '082183669861', 'Laki-Laki', '411', 15, 1, 'Terbata Bata', 'IMG-20220927-WA0003.jpg', 'lunas', 2, '22411011', 3, NULL, NULL, NULL, NULL),
(746, '22412023', 'Eka Devana ', '083169589185', 'Perempuan', '412', 1, 9, 'Terbata Bata', 'Screenshot_20221006_163509.jpg', 'lunas', 2, '22412023', 3, NULL, NULL, NULL, NULL),
(747, '22412034', 'Dede septi yani', '0895371913369', 'Perempuan', '412', 1, 9, 'Terbata Bata', 'Screenshot_20220925-152438.png', 'lunas', 2, '22412034', 3, NULL, NULL, NULL, NULL),
(748, '22412041', 'SITI AMELIA WULANDARI', '089615635008', 'Perempuan', '412', 1, 9, 'Terbata Bata', 'IMG-20221006-WA0015.jpg', 'lunas', 2, '22412041', 3, NULL, NULL, NULL, NULL),
(749, '22311084', 'Fatuata Rahman', '088274110832', 'Laki-Laki', '311', 3, 9, 'Terbata Bata', 'IMG-20220923-WA0002.jpg', 'lunas', 2, '22311084', 3, NULL, NULL, NULL, NULL),
(750, '22316070', 'AHMAD QUM QUM SYUHUL', '081368433810', 'Laki-Laki', '316', 2, 9, 'Terbata Bata', 'TK_Ahmad Qum Qum S_IDS01848.jpg', 'lunas', 2, '22316070', 3, NULL, NULL, NULL, NULL),
(751, '22316023', 'Akhmad Febriyo Febriyansyah ', '085839326010', 'Laki-Laki', '316', 1, 9, 'Lancar', 'IMG-20221006-WA0036.jpg', 'lunas', 2, 'Rio180204', 3, NULL, NULL, NULL, NULL),
(752, '22316008', 'Medy Dwi Kurniawan', '081273018093', 'Laki-Laki', '316', 1, 9, 'Terbata Bata', 'Screenshot_2022-10-05-19-54-09-106_com.miui.gallery.jpg', 'lunas', 2, '22316008', 3, NULL, NULL, NULL, NULL),
(753, '22316002', 'SYAPIQ RABANI ', '082281690772', 'Laki-Laki', '316', 1, 9, 'Terbata Bata', 'Screenshot_20220923-144745.png', 'lunas', 2, '22316002', 3, NULL, NULL, NULL, NULL),
(754, '22311111', 'Ikhwan Sulistiansyah', '085768213472', 'Laki-Laki', '311', 3, 9, 'Terbata Bata', 'Screenshot_2022-10-06-16-49-21-289_com.android.chrome.jpg', 'lunas', 2, '22311111', 3, NULL, NULL, NULL, NULL),
(755, '22111003', 'Muhammad Zahii Athallah', '08996489130', 'Laki-Laki', '111', 1, 9, 'Terbata Bata', '40F3B978-F48E-4093-AA39-97BE0401BA2B.jpeg', 'lunas', 2, 'Zaiath14.', 3, NULL, NULL, NULL, NULL),
(756, '22315002', 'Ahmad Ridwan', '085809217015', 'Laki-Laki', '315', 1, 9, 'Terbata Bata', 'IMG_20221006_165211.JPG', 'lunas', 2, '22315002', 3, NULL, NULL, NULL, NULL),
(757, '22411052', 'Shakila azzahra', '089654296028', 'Perempuan', '411', 5, 9, 'Lancar', 'IMG-20221005-WA0037.jpg', 'lunas', 2, '22411052', 3, NULL, NULL, NULL, NULL),
(758, '22412039', 'Nelsya Rahma Varadhila', '085809378147', 'Perempuan', '412', 1, 9, 'Terbata Bata', 'E9DFF2C5-04C4-400C-91A6-36307DB38682.jpeg', 'lunas', 2, '22412039', 3, NULL, NULL, NULL, NULL),
(759, '22114008', 'Algani mataru ', '085789464361', 'Laki-Laki', '114', 1, 9, 'Lancar', 'IMG-20220928-WA0057.jpg', 'lunas', 2, '22114008', 3, NULL, NULL, NULL, NULL),
(760, '22311109', 'Rendy Eko Saputra ', '083166487136', 'Laki-Laki', '311', 2, 9, 'Terbata Bata', 'IMG_20221006_170642.jpg', 'lunas', 2, 'Rendsek33*', 3, NULL, NULL, NULL, NULL),
(761, '22316029', 'Ferman Ferdaus', '085267216405', 'Laki-Laki', '316', 1, 9, 'Lancar', 'Screenshot_2022-09-27-22-10-43-277_cn.wps.moffice_eng.jpg', 'lunas', 2, 'namaku123', 3, NULL, NULL, NULL, NULL),
(762, '22316007', 'Yulian Samsir', '081271376954', 'Laki-Laki', '316', 1, 9, 'Terbata Bata', 'Screenshot_2022-10-06-17-15-33-878_com.miui.gallery.jpg', 'lunas', 2, '22316007', 3, NULL, NULL, NULL, NULL),
(763, '22316020', 'Muhammad Raihan Fasya', '082180227303', 'Laki-Laki', '316', 1, 9, 'Terbata Bata', 'Screenshot_2022-10-06-17-23-16-585_cn.wps.moffice_eng.jpg', 'lunas', 2, 'Raihanfasya5', 3, NULL, NULL, NULL, NULL),
(764, '22114055', 'Haris ', '085839345684', 'Laki-Laki', '114', 2, 9, 'Lancar', 'IMG-20221005-WA0051_1.jpg', 'lunas', 2, 'Hasbullah18', 3, NULL, NULL, NULL, NULL),
(765, '22311074', 'Sintia Ariyani', '082282267029', 'Perempuan', '311', 2, 9, 'Lancar', 'Screenshot_2022-10-06-18-28-45-16_c37d74246d9c81aa0bb824b57eaf7062.png', 'lunas', 2, '22311074', 3, NULL, NULL, NULL, NULL),
(766, '22316050', 'Abdillah Akbar Al Arif ', '082175577737', 'Laki-Laki', '316', 2, 9, 'Lancar', 'Screenshot_2022-10-06-18-38-50-89_c37d74246d9c81aa0bb824b57eaf7062.jpg', 'lunas', 2, '22316050', 3, NULL, NULL, NULL, NULL),
(767, '22315011', 'Tria Pramuswari ', '089629138356', 'Perempuan', '315', 1, 9, 'Terbata Bata', 'Screenshot_2022-10-06-18-40-08-36.jpg', 'lunas', 2, '27102004', 3, NULL, NULL, NULL, NULL),
(768, '22111013', 'Elsa Ramadhany', '089509988587', 'Perempuan', '111', 2, 9, 'Lancar', '1EA20EF9-0938-4587-BCAD-04CE3E438123.png', 'lunas', 2, '22111013', 3, NULL, NULL, NULL, NULL),
(769, '22114050', 'ALVIN YULIZAR', '089690439854', 'Laki-Laki', '114', 2, 9, 'Lancar', 'Screenshot_2022-10-05-19-26-18-649_com.google.android.apps.docs.jpg', 'lunas', 2, '22114050', 3, NULL, NULL, NULL, NULL),
(770, '22411084', 'Vepi Nopita Sari', '082225004416', 'Perempuan', '411', 2, 9, 'Terbata Bata', 'IMG-20220928-WA0002.jpg', 'lunas', 2, '22411084', 3, NULL, NULL, NULL, NULL),
(771, '22114041', 'Zidane marliyawantoro', '081368096770', 'Laki-Laki', '114', 2, 9, 'Lancar', 'IMG-20221005-WA0016.jpg', 'lunas', 2, 'ZIDANE1922', 3, NULL, NULL, NULL, NULL),
(772, '22411034', 'Tiara Putri Amrina', '085809216930', 'Perempuan', '411', 1, 9, 'Terbata Bata', 'IMG-20220924-WA0088.jpg', 'lunas', 2, 'allahswt01', 3, NULL, NULL, NULL, NULL),
(773, '22411041', 'Arlentariany Dwi Putri', '081272893231', 'Perempuan', '411', 1, 9, 'Terbata Bata', 'IMG-20221006-WA0035.jpg', 'lunas', 2, '22411041', 3, NULL, NULL, NULL, NULL),
(774, '22411036', 'Anindita Marisca ', '081279754682', 'Perempuan', '411', 1, 9, 'Lancar', 'Screenshot_2022_1006_194201.jpg', 'lunas', 2, '22411036', 3, NULL, NULL, NULL, NULL),
(775, '22411042', 'Andini Wulandari', '089699478266', 'Perempuan', '411', 1, 9, 'Lancar', 'IMG-20221006-WA0048.jpg', 'lunas', 2, '22411042', 3, NULL, NULL, NULL, NULL),
(776, '22311093', 'Revanza Dwi Al Hafizh ', '082183712045', 'Laki-Laki', '311', 2, 9, 'Terbata Bata', 'Screenshot_20221002_133700.jpg', 'lunas', 2, '22311093', 3, NULL, NULL, NULL, NULL),
(777, '22311055', 'Ryan Dermawan ', '085381456767', 'Laki-Laki', '311', 15, 9, 'Terbata Bata', 'Screenshot_2022-10-06-21-23-02-21.jpg', 'lunas', 2, '22311055', 3, NULL, NULL, NULL, NULL),
(778, '22113012', 'Intan Habiba Handayani ', '08995076611', 'Perempuan', '113', 1, 9, 'Lancar', 'Screenshot_2022-09-26-11-29-53-80_c37d74246d9c81aa0bb824b57eaf7062.jpg', 'lunas', 2, '22113012', 3, NULL, NULL, NULL, NULL),
(779, '22411033', 'Veny ayu saftiani ', '082289245366', 'Perempuan', '411', 1, 9, 'Lancar', 'Screenshot_2022_1006_194202.jpg', 'lunas', 2, '22411033', 3, NULL, NULL, NULL, NULL),
(780, '22315025', 'M Syakur Aditya Putra', '081539317706', 'Laki-Laki', '315', 1, 9, 'Lancar', 'Screenshot_20221003_191730.jpg', 'lunas', 2, '22315025', 3, NULL, NULL, NULL, NULL),
(781, '22316056', 'Bagus Pradika', '082185235322', 'Laki-Laki', '316', 2, 9, 'Terbata Bata', 'Screenshot_2022-09-26-19-37-05-791_com.google.android.apps.docs.jpg', 'lunas', 2, '22316056', 3, NULL, NULL, NULL, NULL),
(782, '22411211', 'Istikomah', '083168324098', 'Perempuan', '411', 2, 9, 'Lancar', 'Screenshot_20220927-060604_Samsung Internet.jpg', 'lunas', 2, '22411211', 3, NULL, NULL, NULL, NULL),
(783, '22411081', 'Tri Lestari Mawasati ', '082269978278', 'Perempuan', '411', 3, 9, 'Lancar', 'Screenshot_2022-09-26-16-10-46-83_40deb401b9ffe8e1df2f1cc5ba480b12.jpg', 'lunas', 2, 'Mawsati_22411081', 3, NULL, NULL, NULL, NULL),
(784, '22316010', 'Fatkhur Nurrohman', '085658303941', 'Laki-Laki', '316', 1, 9, 'Terbata Bata', 'WhatsApp Image 2022-10-06 at 19.16.50.jpeg', 'lunas', 2, '22316010', 3, NULL, NULL, NULL, NULL),
(785, '18316019', 'MURNI SEPTIANI ', '085266643329', 'Perempuan', '316', 2, 9, 'Lancar', 'Screenshot_2022-09-28-07-47-24-07.png', 'lunas', 2, '18316019', 3, NULL, NULL, NULL, NULL),
(786, '22316051', 'Fadillah azahra', '087818666459', 'Perempuan', '316', 2, 9, 'Tidak Bisa Membaca', '219281B4-18F8-43F1-BD5F-1162775D5DD0.jpeg', 'lunas', 2, '22316051', 3, NULL, NULL, NULL, NULL),
(787, '22311094', 'Reva Ekalia', '085783031747', 'Perempuan', '311', 2, 9, 'Lancar', 'IMG_20221002_021925.jpg', 'lunas', 2, '22311094', 3, NULL, NULL, NULL, NULL),
(788, '22311070', 'Rizka Enggelita M ', '089509040426', 'Perempuan', '311', 2, 9, 'Lancar', 'Screenshot_2022-10-07-10-47-27-06_c37d74246d9c81aa0bb824b57eaf7062.jpg', 'lunas', 2, '30092004', 3, NULL, NULL, NULL, NULL),
(789, '22311069', 'Jessica Caroline', '089527359803', 'Perempuan', '311', 2, 9, 'Lancar', '08933E70-8AC7-4593-9AA6-6248AE312664.jpeg', 'lunas', 2, '22311069', 3, NULL, NULL, NULL, NULL),
(790, '22311076', 'Liza Sefiana Sari ', '085788218684', 'Perempuan', '311', 2, 9, 'Lancar', 'IMG-20221007-WA0010.jpg', 'lunas', 2, '22311076', 3, NULL, NULL, NULL, NULL),
(791, '22311117', 'Cyntia Syifa Indirasari', '085377794909', 'Perempuan', '311', 2, 9, 'Terbata Bata', 'D2E8A62E-A0A1-48C0-861E-3A5F45B7BA8A.png', 'lunas', 2, '22311117', 3, NULL, NULL, NULL, NULL),
(792, '22311108', 'Yesika Amelia', '081210854869', 'Perempuan', '311', 2, 9, 'Lancar', 'Screenshot_20220928-142044_WPS Office.jpg', 'lunas', 2, '22311108', 3, NULL, NULL, NULL, NULL),
(793, '22311065', 'VINA OKTAFIYANA', '082371475283', 'Perempuan', '311', 2, 9, 'Terbata Bata', 'IMG-20221007-WA0008.jpg', 'lunas', 2, '22311065', 3, NULL, NULL, NULL, NULL),
(794, '22311013', 'Rini Selvia', '081272344120', 'Perempuan', '311', 15, 9, 'Lancar', 'IMG-20220929-WA0006.jpg', 'lunas', 2, '22311013', 3, NULL, NULL, NULL, NULL),
(795, '22311078', 'NIA AULIA AFIFA', '089691916482', 'Perempuan', '311', 2, 9, 'Lancar', 'Screenshot_20221007_105501.jpg', 'lunas', 2, '22311078', 3, NULL, NULL, NULL, NULL),
(796, '22311120', 'Regita Shafa Malavest', '082223282204', 'Perempuan', '311', 2, 9, 'Lancar', 'Screenshot_2022-09-27-18-15-09-76.jpg', 'lunas', 2, '22311120', 3, NULL, NULL, NULL, NULL),
(797, '22315003', 'yudha fariz andhika', '081211425115', 'Laki-Laki', '315', 1, 9, 'Terbata Bata', 'IMG-20221003-WA0014.jpg', 'lunas', 2, '291001', 3, NULL, NULL, NULL, NULL),
(798, '22316066', 'Rafli Febrianto rabowo ', '085788484921', 'Laki-Laki', '316', 2, 9, 'Lancar', 'IMG-20220925-WA0035.jpg', NULL, 2, '22316066', 3, NULL, NULL, NULL, NULL),
(799, '22316049', 'Deka Ramadani ', '087747641474', 'Laki-Laki', '316', 2, 9, 'Lancar', 'Screenshot_2022-10-07-12-42-13-34.jpg', 'lunas', 2, '22316049', 3, NULL, NULL, NULL, NULL),
(800, '22315031', 'Aditya Edi Rosandi', '085788090155', 'Laki-Laki', '315', 1, 9, 'Terbata Bata', '1665121371148.jpg', 'lunas', 2, '22315031', 3, NULL, NULL, NULL, NULL),
(801, '22316040', 'JEFRI ANDRI RIFAI ', '082269288916', 'Laki-Laki', '316', 2, 9, 'Terbata Bata', 'IMG_20221007_124348.jpg', 'lunas', 2, '22316040', 3, NULL, NULL, NULL, NULL),
(802, '22316052', 'Fadhlurrohman penateh mergo ', '083168373273', 'Laki-Laki', '316', 2, 9, 'Terbata Bata', 'IMG-20221007-WA0016.jpg', 'lunas', 2, 'Ateh2244', 3, NULL, NULL, NULL, NULL),
(803, '22316061', 'Andhika Novian Ramadhan', '082186105260', 'Laki-Laki', '316', 2, 9, 'Terbata Bata', 'IMG-20220924-WA0046.jpg', 'lunas', 2, '22316061', 3, NULL, NULL, NULL, NULL),
(804, '22315018', 'Rheno Adhi Bhagaskara', '089632368195', 'Laki-Laki', '315', 1, 9, 'Terbata Bata', 'IMG_20221007_130238.jpg', 'lunas', 2, '22315018', 3, NULL, NULL, NULL, NULL),
(805, '2215015', 'Leony Khairunnisa', '085357205067', 'Perempuan', '114', 1, 8, 'Terbata Bata', 'Screenshot_2022-09-24-18-52-28-171_com.mi.globalbrowser.jpg', 'lunas', 2, '2215015', 3, NULL, NULL, NULL, NULL),
(806, '22311046', 'Anwar Sidek', '089502153352', 'Laki-Laki', '311', 15, 9, 'Lancar', 'JADWAL KULIAH SI 22 DX_1.png', 'lunas', 2, '22311046', 3, NULL, NULL, NULL, NULL),
(807, '22111007', 'Arya Dillah Al Bahri ', '081211900723', 'Laki-Laki', '111', 2, 9, 'Terbata Bata', 'IMG-20220925-WA0015.jpg', 'lunas', 2, '22111007', 3, NULL, NULL, NULL, NULL),
(808, '22311064', 'Gita Rahmawati', '085156553604', 'Perempuan', '311', 2, 9, 'Lancar', 'IMG-20221002-WA0046.jpg', 'lunas', 2, '22311064', 3, NULL, NULL, NULL, NULL),
(809, '22311105', 'Vigo Dhimas Raditha Subung', '089616004505', 'Laki-Laki', '311', 2, 9, 'Tidak Bisa Membaca', '062C57E6-0A01-4CBF-9A11-F1C3A2B53793.jpeg', 'lunas', 2, '22311105', 3, NULL, NULL, NULL, NULL),
(810, '22311081', 'Elma Salsabella ', '081278025508', 'Perempuan', '311', 3, 9, 'Lancar', 'Screenshot_2022-10-03-09-00-24-56_c37d74246d9c81aa0bb824b57eaf7062.jpg', 'lunas', 2, '22311081', 3, NULL, NULL, NULL, NULL),
(811, '22311116', 'Regita Prisila Wulandari', '083802535587', 'Perempuan', '311', 3, 9, 'Lancar', 'Screenshot_20221007_143327.jpg', 'lunas', 2, '22311116', 3, NULL, NULL, NULL, NULL),
(812, '22311092', 'Nissya Sabila Agriwifi', '6281278448338', 'Perempuan', '311', 3, 9, 'Lancar', 'Screenshot_20221007_143534.jpg', 'lunas', 2, '22311092', 3, NULL, NULL, NULL, NULL),
(813, '22311113', 'Azizah Halwa', '081360997048', 'Perempuan', '311', 3, 9, 'Lancar', 'Screenshot_20221007-143545_WPS Office.jpg', 'lunas', 2, 'minyoongi', 3, NULL, NULL, NULL, NULL),
(814, '22411044', 'Silviana Putri', '085172382299', 'Perempuan', '411', 5, 9, 'Terbata Bata', 'Screenshot_20221007_144111.jpg', 'lunas', 2, '22411044', 3, NULL, NULL, NULL, NULL),
(815, '22311063', 'Dicky zulkarnaen', '083890221760', 'Laki-Laki', '311', 2, 9, 'Terbata Bata', 'Screenshot_20221007-145003_WPS Office.jpg', 'lunas', 2, '22311063', 3, NULL, NULL, NULL, NULL),
(816, '22311049', 'Fajar Hidayat', '089606110172', 'Laki-Laki', '311', 15, 9, 'Terbata Bata', 'IMG-20220929-WA0003.jpg', NULL, 2, '22311049', 3, NULL, NULL, NULL, NULL),
(817, '22411112', 'Azzahra Vania Pradiva', '081572975424', 'Perempuan', '411', 2, 9, 'Terbata Bata', 'IMG-20220927-WA0128.jpg', 'lunas', 2, '22411112', 3, NULL, NULL, NULL, NULL),
(818, '22114013', 'Harri ramades', '081804117655', 'Laki-Laki', '114', 1, 9, 'Lancar', 'IMG-20221005-WA0097.jpg', 'lunas', 2, '22114013', 3, NULL, NULL, NULL, NULL),
(819, '22114011', 'Bowo Andalas', '085284018483', 'Laki-Laki', '114', 1, 9, 'Terbata Bata', 'Screenshot_20221007_150134.jpg', 'lunas', 2, '22114011', 3, NULL, NULL, NULL, NULL),
(820, '22316041', 'Dwi Nanda Budi Rahmat Dani', '081533467236', 'Laki-Laki', '316', 2, 9, 'Terbata Bata', '03C7F3EA-93EC-48CA-AB63-AE884F48ED34.png', 'lunas', 2, 'NandaKeceng32B', 3, NULL, NULL, NULL, NULL),
(821, '22411030', 'Safira Nandita putri', '089662737847', 'Perempuan', '411', 1, 9, 'Terbata Bata', 'Screenshot_2022-10-07-15-14-10-66.jpg', 'lunas', 2, 'zahrafira26_', 3, NULL, NULL, NULL, NULL),
(822, '22316039', 'Imelda Dwi Mariska ', '085267198860', 'Perempuan', '316', 2, 9, 'Tidak Bisa Membaca', 'Screenshot_2022_1007_151610.jpg', 'lunas', 2, '22316039', 3, NULL, NULL, NULL, NULL),
(823, '22411038', 'Vicky agustin', '082179261467', 'Perempuan', '411', 1, 9, 'Terbata Bata', 'IMG-20221007-WA0002.jpg', 'lunas', 2, '22411038', 3, NULL, NULL, NULL, NULL),
(824, '22315027', 'Deni Purwoko', '085156338158', 'Laki-Laki', '315', 1, 9, 'Terbata Bata', 'Screenshot_2022-10-03-18-44-03-614_com.google.android.apps.docs.jpg', NULL, 2, '22315027', 3, NULL, NULL, NULL, NULL),
(825, '22411029', 'Wulan Sulistya Arli', '085377731891', 'Perempuan', '411', 1, 9, 'Terbata Bata', 'IMG-20221005-WA0059.jpg', 'lunas', 2, '22411029', 3, NULL, NULL, NULL, NULL),
(826, '22316060', 'Nopriwan', '085259710790', 'Laki-Laki', '316', 2, 9, 'Terbata Bata', 'F9A7802F-1DE4-42EA-97D1-D2AC7EAD48DF.jpeg', 'lunas', 2, '22316060', 3, NULL, NULL, NULL, NULL),
(827, '22316064', 'Adelia Nur Amala Putri ', '085789489053', 'Perempuan', '316', 2, 9, 'Tidak Bisa Membaca', 'Screenshot_2022_1007_151611.jpg', 'lunas', 2, '22316064', 3, NULL, NULL, NULL, NULL),
(828, '22411043', 'Rizca Permata Putri', '083863771956', 'Perempuan', '411', 1, 9, 'Terbata Bata', 'Screenshot_20220924_185832.jpg', 'lunas', 2, '22411043', 3, NULL, NULL, NULL, NULL),
(829, '22315032', 'Heru Herdiansyah ', '085783446734', 'Laki-Laki', '315', 1, 9, 'Lancar', 'S1 Teknik Elektro(1).jpg', 'lunas', 2, '22315032', 3, NULL, NULL, NULL, NULL),
(830, '22316059', 'LUTFHI ANGGIA PRAYOGA', '085742343058', 'Laki-Laki', '316', 2, 9, 'Lancar', 'IMG_20221007_154615.jpg', 'lunas', 2, 'lutfhi6789', 3, NULL, NULL, NULL, NULL),
(831, '22311106', 'Irvan Januar', '0895381057878', 'Laki-Laki', '311', 3, 9, 'Terbata Bata', 'Screenshot_2022-10-07-16-03-31-862_cn.wps.moffice_eng.jpg', 'lunas', 2, '22311106', 3, NULL, NULL, NULL, NULL),
(832, '22111012', 'Handera Diah Kesumawati', '085669312629', 'Perempuan', '111', 1, 9, 'Terbata Bata', 'IMG-20220925-WA0033.jpg', 'lunas', 2, '22111012', 3, NULL, NULL, NULL, NULL),
(833, '22311058', 'Muhammad Abdul Rafii', '087716065353', 'Laki-Laki', '311', 15, 9, 'Terbata Bata', 'WhatsApp Image 2022-10-07 at 16.08.33 (1).jpeg', NULL, 2, 'kedaton1', 3, NULL, NULL, NULL, NULL),
(834, '22411079', 'Liza Novalia ', '081279764299', 'Perempuan', '411', 2, 9, 'Lancar', 'IMG_20221007_154426.jpg', 'lunas', 2, '0128112005', 3, NULL, NULL, NULL, NULL),
(835, '22411019', 'Miftah Emilia Zarwati ', '085838476269', 'Perempuan', '411', 1, 9, 'Terbata Bata', 'IMG-20220925-WA0043.jpg', 'lunas', 2, '22411019', 3, NULL, NULL, NULL, NULL),
(837, '22311099', 'Kharisma risa', '089690881623', 'Perempuan', '311', 3, 9, 'Terbata Bata', 'Screenshot_2022-09-30-14-41-26-61_c37d74246d9c81aa0bb824b57eaf7062.png', NULL, 2, '22311099', 3, NULL, NULL, NULL, NULL),
(838, '22111016', 'A Vahry Lilam Putra ', '0895806056377', 'Laki-Laki', '111', 2, 9, 'Terbata Bata', 'IMG-20220925-WA0055.jpg', NULL, 2, '22111016', 3, NULL, NULL, NULL, NULL),
(839, '22411053', 'SELVI TRIYANI', '085768693602', 'Perempuan', '411', 5, 9, 'Terbata Bata', 'Screenshot_2022-10-07-17-09-19-719_com.whatsapp.jpg', 'lunas', 2, '22411053', 3, NULL, NULL, NULL, NULL),
(840, '22111040', 'Achmad Raffa Zulliano', '089671345315', 'Laki-Laki', '111', 2, 9, 'Terbata Bata', 'IMG-20220926-WA0013.jpg', NULL, 2, '22111040', 3, NULL, NULL, NULL, NULL),
(841, '22111015', 'DINDA RAHMANIAR', '081279691644', 'Perempuan', '111', 2, 9, 'Terbata Bata', '6EF15BD5-F7DE-4666-B79E-C82E69C5277E.png', 'lunas', 2, '22111015', 3, NULL, NULL, NULL, NULL),
(842, '22111020', 'Imelda Aulia Arif ', '085943165141', 'Perempuan', '111', 2, 9, 'Lancar', 'IMG-20220925-WA0073.jpg', 'lunas', 2, 'Qwerty.19', 3, NULL, NULL, NULL, NULL),
(843, '22411054', 'WIDIA KASIH PERNANDA', '088287262231', 'Perempuan', '411', 5, 9, 'Terbata Bata', '423F33AE-B507-4953-A97F-6C4713C5CF6E.png', 'lunas', 2, 'Widia_kasih123', 3, NULL, NULL, NULL, NULL),
(844, '22411051', 'Rian budi Utomo ', '087894754371', 'Laki-Laki', '411', 5, 9, 'Terbata Bata', 'IMG-20221005-WA0024.jpg', 'lunas', 2, '22411051', 3, NULL, NULL, NULL, NULL),
(845, '22411207', 'Farel Hafizon ', '082279857961', 'Laki-Laki', '411', 5, 9, 'Lancar', 'IMG-20221005-WA0046.jpg', 'lunas', 2, '22411207', 3, NULL, NULL, NULL, NULL),
(846, '22411206', 'LEO GALIH ALUGORO', '085789922940', 'Laki-Laki', '411', 5, 9, 'Terbata Bata', 'Screenshot_2022-10-07-17-52-37-885_com.whatsapp.jpg', 'lunas', 2, '22411206', 3, NULL, NULL, NULL, NULL),
(847, '22311123', 'M Rifaldi', '083149346254', 'Laki-Laki', '311', 2, 9, 'Terbata Bata', 'Screenshot_20220923_160445.jpg', 'lunas', 2, '22311123', 3, NULL, NULL, NULL, NULL),
(848, '22316057', 'SYAKHRUL RAMADHAN', '085658746864', 'Laki-Laki', '316', 2, 9, 'Terbata Bata', 'IMG-20220924-WA0039.jpg', 'lunas', 2, '22316057', 3, NULL, NULL, NULL, NULL),
(849, '22111005', 'Lulu aprilia', '082281842945', 'Perempuan', '111', 1, 9, 'Lancar', 'Screenshot_2022-10-07-18-29-42-556_com.whatsapp.jpg', 'lunas', 2, '05april2004', 3, NULL, NULL, NULL, NULL),
(850, '22316044', 'Ridho Rafikhi', '082213865619', 'Laki-Laki', '316', 2, 9, 'Lancar', 'Screenshot_2022-10-06-08-31-35-51.jpg', 'lunas', 2, '22316044', 3, NULL, NULL, NULL, NULL),
(851, '22316053', 'Bagas hadi prasetyo', '082269751985', 'Laki-Laki', '316', 2, 9, 'Terbata Bata', 'Screenshot_20221007-182922_Gallery.jpg', 'lunas', 2, '22316053', 3, NULL, NULL, NULL, NULL),
(852, '22411037', 'Tria Nur Aink', '089525888508', 'Perempuan', '411', 1, 9, 'Lancar', 'Screenshot_2022-10-07-18-41-07-988_com.whatsapp.jpg', 'lunas', 2, 'Matahari_123@', 3, NULL, NULL, NULL, NULL),
(853, '22411120', 'Della Agia Veromica', '082375926857', 'Perempuan', '411', 15, 9, 'Tidak Bisa Membaca', 'Screenshot_20221007-085626_One UI Home.jpg', 'lunas', 2, '22411120', 3, NULL, NULL, NULL, NULL),
(854, '22111011', 'Muhammad Naufal Shiddiq', '088707030124', 'Laki-Laki', '111', 1, 9, 'Lancar', 'IMG-20220924-WA0048.jpg', 'lunas', 2, '22111011', 3, NULL, NULL, NULL, NULL),
(855, '22311054', 'PENDI ', '081279566837', 'Laki-Laki', '311', 15, 9, 'Terbata Bata', 'Screenshot_20221007_184656.jpg', 'lunas', 2, '22311054', 3, NULL, NULL, NULL, NULL),
(856, '22411110', 'SRI SURYANTI', '081272955667', 'Perempuan', '411', 2, 9, 'Lancar', 'IMG-20220927-WA0018.jpg', 'lunas', 2, '22411110', 3, NULL, NULL, NULL, NULL),
(857, '22411106', 'Eka Susanti', '089602738993', 'Perempuan', '411', 2, 9, 'Lancar', 'IMG-20220927-WA0090.jpg', 'lunas', 2, '22411106', 3, NULL, NULL, NULL, NULL),
(858, '22411148', 'Ningrum Putri Jayanti', '089646646794', 'Perempuan', '411', 15, 9, 'Lancar', 'Screenshot_20221007-184959~2.png', 'lunas', 2, '19112003', 3, NULL, NULL, NULL, NULL),
(859, '22411103', 'Erna Safitri ', '0895353557327', 'Perempuan', '411', 15, 9, 'Lancar', 'IMG-20220927-WA0002.jpg', 'lunas', 2, '22411103', 3, NULL, NULL, NULL, NULL),
(860, '22411191', 'Sheny Arsella', '089628777448', 'Perempuan', '411', 15, 9, 'Terbata Bata', '6715B240-EDD4-4789-9BFF-5194BC79FC62.jpeg', 'lunas', 2, '22411191', 3, NULL, NULL, NULL, NULL),
(861, '22411003', 'TIKA ALFIANA', '085783235049', 'Perempuan', '411', 15, 9, 'Lancar', 'IMG_20221007_185452.jpg', 'lunas', 2, '@Tika123', 3, NULL, NULL, NULL, NULL),
(862, '22411209', 'Suci Dwi Amanda ', '085832040717', 'Perempuan', '411', 15, 9, 'Lancar', 'IMG-20221007-WA0041.jpg', 'lunas', 2, '22411209', 3, NULL, NULL, NULL, NULL),
(863, '22411070', 'Anggi puspita sari ', '089630639998', 'Perempuan', '411', 15, 9, 'Lancar', 'IMG-20221007-WA0066.jpg', 'lunas', 2, '22411070', 3, NULL, NULL, NULL, NULL),
(864, '22316026', 'Muhammad Randy Pratama', '089509974847', 'Laki-Laki', '316', 1, 9, 'Lancar', 'IMG_20221007_190039.jpg', 'lunas', 2, 'Mokachino', 3, NULL, NULL, NULL, NULL),
(865, '22315033', 'Rizki Yulianto ', '083837265298', 'Laki-Laki', '315', 1, 9, 'Lancar', 'IMG-20221003-WA0024.jpg', 'lunas', 2, '22315033', 3, NULL, NULL, NULL, NULL),
(866, '22315014', 'Taufiqurrahman ', '085832775794', 'Laki-Laki', '315', 1, 9, 'Terbata Bata', 'IMG-20221003-WA0033.jpg', 'lunas', 2, '22315014', 3, NULL, NULL, NULL, NULL),
(867, '22316068', 'Della Laili Agustin', '085768906190', 'Perempuan', '316', 1, 9, 'Lancar', 'Screenshot_20221006_134045.jpg', 'lunas', 2, '22316068', 3, NULL, NULL, NULL, NULL),
(868, '22316063', 'Muhammad Taufiq Prabowo', '081366457763', 'Laki-Laki', '316', 2, 9, 'Terbata Bata', 'Screenshot_20221007-193715_Gallery.jpg', 'lunas', 2, '22316063', 3, NULL, NULL, NULL, NULL),
(869, '22411012', 'Silfia Ananda', '089653795257', 'Perempuan', '411', 1, 9, 'Terbata Bata', 'Screenshot_20221007_202734.jpg', 'lunas', 2, '22411012', 3, NULL, NULL, NULL, NULL),
(870, '22411002', 'Muhammad yusuf', '083182928127', 'Laki-Laki', '411', 5, 9, 'Lancar', 'Screenshot_2022-10-07-20-37-06-345_com.whatsapp.jpg', 'lunas', 2, '22411002', 3, NULL, NULL, NULL, NULL),
(871, '22411032', 'Iyos Tia', '082278137523', 'Perempuan', '411', 1, 9, 'Lancar', 'Screenshot_20220924_161607.jpg', 'lunas', 2, '22411032', 3, NULL, NULL, NULL, NULL),
(872, '22311112', 'Salsabila Ainur Hidayah', '0895321085652', 'Perempuan', '311', 2, 9, 'Lancar', '05F19C82-AB82-4BFC-93A1-162C8CCF6110.jpeg', 'lunas', 2, '22311112', 3, NULL, NULL, NULL, NULL),
(873, '22411092', 'DETA SEPTIANA', '085215738870', 'Perempuan', '411', 2, 9, 'Lancar', 'Screenshot_2022-09-27-07-35-43-03_40deb401b9ffe8e1df2f1cc5ba480b12.jpg', 'lunas', 2, '22411092', 3, NULL, NULL, NULL, NULL),
(874, '22411197', 'Nanda Ramadhan', '081272817776', 'Laki-Laki', '411', 3, 9, 'Lancar', 'IMG_20221007_220309.jpg', 'lunas', 2, '22411197', 3, NULL, NULL, NULL, NULL),
(875, '22411040', 'PUTRI VERONICA', '085171093309', 'Perempuan', '411', 1, 9, 'Lancar', 'Screenshot_20221007_221031.jpg', 'lunas', 2, '22411040', 3, NULL, NULL, NULL, NULL),
(876, '22411091', 'Fiona Nurhaliza', '089628722566', 'Perempuan', '411', 1, 9, 'Terbata Bata', 'Screenshot_20220924-160746_Drive.jpg', 'lunas', 2, 'Fionachan_27', 3, NULL, NULL, NULL, NULL),
(877, '22411016', 'NISYA NURAINI ', '085267314980', 'Perempuan', '411', 1, 9, 'Lancar', 'Screenshot_2022_0924_191102.png', 'lunas', 2, 'Isyaanuraini15.', 3, NULL, NULL, NULL, NULL),
(878, '22411069', 'Aisya rara maharani', '081366061715', 'Perempuan', '411', 2, 9, 'Lancar', 'A4E8011E-93A4-4FDF-8042-B959D3B51E10.jpeg', 'lunas', 2, '22411069', 3, NULL, NULL, NULL, NULL),
(879, '22411156', 'Mozes Hendly Koswara', '082269005701', 'Laki-Laki', '411', 5, 9, 'Terbata Bata', 'Screenshot_20221003_101842.jpg', 'lunas', 2, '22411156', 3, NULL, NULL, NULL, NULL),
(880, '22411130', 'Rifal pandu Pratama ', '085809805046', 'Laki-Laki', '411', 5, 9, 'Terbata Bata', 'Screenshot_20221008_004529.jpg', 'lunas', 2, '22411130', 3, NULL, NULL, NULL, NULL),
(881, '22316065', 'Devrica fernanda rizky', '083173190691', 'Laki-Laki', '316', 2, 9, 'Terbata Bata', 'IMG-20220924-WA0055.jpg', NULL, 2, '22316065', 3, NULL, NULL, NULL, NULL),
(882, '22114023', 'Zhonnatta Hamdani ', '085709575589', 'Laki-Laki', '114', 1, 9, 'Lancar', 'Screenshot_2022-09-28-08-45-50-91.jpg', 'lunas', 2, '22114023', 3, NULL, NULL, NULL, NULL),
(883, '22112001', 'Wanda Ardillasari', '082279011532', 'Perempuan', '112', 1, 9, 'Terbata Bata', 'IMG-20221006-WA0012.jpg', NULL, 2, '22112001', 3, NULL, NULL, NULL, NULL),
(884, '22113017', 'Enditha Ledy Agustin', '081995952389', 'Perempuan', '113', 1, 9, 'Lancar', 'Screenshot_20220923_125522.jpg', 'lunas', 2, '22113017', 3, NULL, NULL, NULL, NULL),
(885, '22114005', 'Dwi Agil Satria ', '082175307991', 'Laki-Laki', '114', 1, 9, 'Terbata Bata', 'IMG-20220928-WA0139.jpg', 'lunas', 2, '22114005', 3, NULL, NULL, NULL, NULL),
(886, '22411195', 'Septika sari', '0895609607057', 'Perempuan', '411', 3, 9, 'Terbata Bata', 'KELAS C (MNJ 22) 20221008_073846.jpg', 'lunas', 2, '22411195', 3, NULL, NULL, NULL, NULL),
(887, '22316017', 'Moris Cahyadi', '085809525414', 'Laki-Laki', '316', 1, 9, 'Terbata Bata', 'IMG-20221008-WA0001.jpg', 'lunas', 2, '22316017', 3, NULL, NULL, NULL, NULL),
(888, '22411123', 'Azzahra Ivana Fatiha', '083170230025', 'Perempuan', '411', 2, 9, 'Terbata Bata', 'Screenshot_20220924-161047.png', 'lunas', 2, 'Zhrivn200', 3, NULL, NULL, NULL, NULL),
(889, '22411165', 'Indriyani', '082319839655', 'Perempuan', '411', 2, 9, 'Lancar', 'Screenshot_20220924-205641_Samsung Internet.jpg', 'lunas', 2, '22411165', 3, NULL, NULL, NULL, NULL),
(890, '22411006', 'Melisa Alivia', '089633492873', 'Perempuan', '411', 1, 9, 'Lancar', 'IMG_20221008_080248.jpg', 'lunas', 2, '22411006', 3, NULL, NULL, NULL, NULL),
(891, '22316025', 'Tedi surya budi', '083160670872', 'Laki-Laki', '316', 1, 9, 'Terbata Bata', 'Screenshot_2022-10-08-08-22-26-16_e2d5b3f32b79de1d45acd1fad96fbb0f.jpg', 'lunas', 2, '22316025', 3, NULL, NULL, NULL, NULL),
(892, '22411067', 'DIAN HERMALIA ANDESTA ', '088286890054', 'Perempuan', '411', 5, 9, 'Terbata Bata', 'Screenshot_2022-10-08-08-33-54-91.jpg', 'lunas', 2, '22411067', 3, NULL, NULL, NULL, NULL),
(893, '22411025', 'Melvin Berlian AM', '083164892520', 'Laki-Laki', '411', 1, 9, 'Tidak Bisa Membaca', 'IMG_20221008_083426.jpg', 'lunas', 2, 'koppaja88', 3, NULL, NULL, NULL, NULL),
(894, '22316047', 'Reza Isa mahendra', '082377591412', 'Laki-Laki', '316', 2, 9, 'Lancar', '1.png', 'lunas', 2, '22316047', 3, NULL, NULL, NULL, NULL),
(895, '22411188', 'Kelpin juliansyah', '088287016919', 'Laki-Laki', '411', 3, 9, 'Lancar', 'Screenshot_2022-10-08-08-38-16-67_6012fa4d4ddec268fc5c7112cbb265e7.jpg', 'lunas', 2, '22411188', 3, NULL, NULL, NULL, NULL),
(896, '22411203', 'Eksa Jenia Serli ', '085267769657', 'Perempuan', '411', 3, 9, 'Terbata Bata', '88AB1DC2-DDE5-4D59-A222-0AA785ECDF47.jpeg', 'lunas', 2, '22411203', 3, NULL, NULL, NULL, NULL),
(897, '22411190', 'ELISA RATNA SARI ', '085664849524', 'Perempuan', '411', 3, 9, 'Terbata Bata', 'Screenshot_2022-10-08-08-40-59-03_6012fa4d4ddec268fc5c7112cbb265e7.jpg', 'lunas', 2, '22411190', 3, NULL, NULL, NULL, NULL),
(898, '22411031', 'Hasiva Putri Maharani', '085865661948', 'Perempuan', '411', 1, 9, 'Terbata Bata', '309312114_177704511457921_7983538004279907247_n.jpg', 'lunas', 2, '22411031', 3, NULL, NULL, NULL, NULL),
(899, '22411113', 'Saskia Amanda', '088276269845', 'Perempuan', '411', 1, 9, 'Terbata Bata', 'Screenshot_20220926_160924.jpg', 'lunas', 2, '22411113', 3, NULL, NULL, NULL, NULL),
(900, '22411146', 'Rheina Kharizma Putri ', '0895610027763', 'Perempuan', '411', 2, 9, 'Terbata Bata', 'IMG-20220928-WA0031.jpg', 'lunas', 2, '22411146', 3, NULL, NULL, NULL, NULL),
(901, '22231002', 'Rian anwae', '083152526033', 'Laki-Laki', '231', 1, 9, 'Terbata Bata', 'S. I. Akuntansi (d3) 20221008_085013.jpg', 'lunas', 2, '22231002', 3, NULL, NULL, NULL, NULL),
(902, '22411129', 'Raisandy alfhitrah', '087799444679', 'Laki-Laki', '411', 3, 9, 'Lancar', 'KELAS C (MNJ 22) 20221008_084747.jpg', NULL, 2, '22411129', 3, NULL, NULL, NULL, NULL),
(903, '22231003', 'Hajri adi satria', '089690539850', 'Laki-Laki', '231', 1, 9, 'Lancar', 'IMG-20221003-WA0041.jpg', 'lunas', 2, '22231003', 3, NULL, NULL, NULL, NULL),
(904, '22311083', 'Erland Adhe Sharendra', '089603026513', 'Laki-Laki', '311', 3, 9, 'Terbata Bata', 'IMG_20221006_002252.jpg', 'lunas', 2, '22311083', 3, NULL, NULL, NULL, NULL),
(905, '22311089', 'Diva Permana Putra', '089607147500', 'Laki-Laki', '311', 3, 9, 'Terbata Bata', 'Screenshot_20220924-223648.jpg', 'lunas', 2, '22311089', 3, NULL, NULL, NULL, NULL),
(906, '22311087', 'Turwan Aldi Putra', '0895700915881', 'Laki-Laki', '311', 2, 9, 'Terbata Bata', 'IMG_20221008_085439.jpg', 'lunas', 2, 'Muhammadiyah', 3, NULL, NULL, NULL, NULL),
(907, '22311110', 'pupung', '895807783338', 'Laki-Laki', '311', 3, 9, 'Lancar', 'IMG_20221008_090616.jpg', 'lunas', 2, '22311110', 3, NULL, NULL, NULL, NULL),
(908, '22316055', 'Abdu Razak Al Fatah', '089527165245', 'Laki-Laki', '316', 1, 9, 'Lancar', 'IMG-20220930-WA0002.jpg', 'lunas', 2, '22316055', 3, NULL, NULL, NULL, NULL),
(909, '22316001', 'Muhammad Akbar Silvarano', '085783030161', 'Laki-Laki', '316', 1, 9, 'Terbata Bata', 'Screenshot_2022-09-28-19-16-37-16.png', 'lunas', 2, 'Pringsewu18', 3, NULL, NULL, NULL, NULL),
(910, '22411216', 'Egi Sapitri Ramadhani', '083170537648', 'Perempuan', '411', 15, 9, 'Terbata Bata', 'C96A500A-E85E-4C5B-8C5F-E677A8CAB858.png', 'lunas', 2, '22411216', 3, NULL, NULL, NULL, NULL),
(911, '22316005', 'Muhamad Ilhandi', '0895600999099', 'Laki-Laki', '316', 1, 9, 'Terbata Bata', '2BC70984-970D-4603-95F6-8A3A862E880A.png', 'lunas', 2, '22316005', 3, NULL, NULL, NULL, NULL),
(912, '22111047', 'Siti Masruroh ', '081219982679', 'Perempuan', '111', 2, 9, 'Terbata Bata', 'IMG_20221008_091735.jpg', 'lunas', 2, '22111047', 3, NULL, NULL, NULL, NULL),
(913, '22411090', 'Hilwah Tazkiyah', '0895334644524', 'Perempuan', '411', 1, 9, 'Terbata Bata', 'IMG_20221008_095316.jpg', 'lunas', 2, '22411090', 3, NULL, NULL, NULL, NULL),
(914, '22111008', 'Sely ramadonna', '083193231493', 'Perempuan', '111', 1, 9, 'Terbata Bata', 'IMG-20220923-WA0077.jpg', 'lunas', 2, '22111008', 3, NULL, NULL, NULL, NULL),
(915, '22316006', 'Andri Supatma', '082372641604', 'Laki-Laki', '316', 1, 9, 'Terbata Bata', 'IMG-20220923-WA0019.jpg', 'lunas', 2, '22316006', 3, NULL, NULL, NULL, NULL),
(916, '22311096', 'Rico pratama', '085788780746', 'Laki-Laki', '311', 2, 9, 'Lancar', 'Screenshot_2022-10-08-09-59-32-90_e2d5b3f32b79de1d45acd1fad96fbb0f.jpg', NULL, 2, '22311096', 3, NULL, NULL, NULL, NULL),
(917, '22411083', 'Salya Bintari Indra Putri', '082287370193', 'Perempuan', '411', 2, 9, 'Lancar', 'Screenshot_2022-10-08-10-02-43-50_e2d5b3f32b79de1d45acd1fad96fbb0f.jpg', 'lunas', 2, 'sbq3578', 3, NULL, NULL, NULL, NULL),
(918, '22113005', 'Fatma Septiari', '085658958236', 'Perempuan', '113', 1, 9, 'Lancar', 'Screenshot_2022-09-24-10-21-13-54_c37d74246d9c81aa0bb824b57eaf7062.jpg', 'lunas', 2, '22113005', 3, NULL, NULL, NULL, NULL),
(919, '22113007', 'Resi vinka aprilia mezana', '082280598904', 'Perempuan', '113', 1, 9, 'Lancar', 'Screenshot_20220923_161111.jpg', 'lunas', 2, '22113007', 3, NULL, NULL, NULL, NULL),
(920, '22111021', 'Resita Indah Saputri', '0878186634378', 'Perempuan', '111', 1, 9, 'Lancar', 'Screenshot_20220923-161450.png', 'lunas', 2, '22111021', 3, NULL, NULL, NULL, NULL),
(921, '22111022', 'Siti Hasanah', '085788167415', 'Perempuan', '111', 1, 9, 'Lancar', 'Screenshot_20220923-161450_1.png', 'lunas', 2, '22111022', 3, NULL, NULL, NULL, NULL),
(922, '22111001', 'Shena Zuliyusnan', '085841245464', 'Perempuan', '111', 1, 9, 'Lancar', 'IMG-20220925-WA0033_1.jpg', 'lunas', 2, '22111001', 3, NULL, NULL, NULL, NULL),
(923, '22114044', 'Reza Alda Agustib', '081939115421', 'Perempuan', '114', 1, 9, 'Terbata Bata', '2D90D96C-0895-4D29-9A4E-479A5AA0CAC4.png', 'lunas', 2, '22114044', 3, NULL, NULL, NULL, NULL),
(924, '22114028', 'Amanda Asti Azzahra ', '0895322430876', 'Perempuan', '114', 1, 9, 'Terbata Bata', 'IMG-20221005-WA0099.jpg', 'lunas', 2, '22114028', 3, NULL, NULL, NULL, NULL),
(925, '22114022', 'Adinda Putri Nabila Situmorang ', '085762533332', 'Perempuan', '114', 1, 9, 'Terbata Bata', 'Screenshot_2022-10-07-12-36-06-89_6012fa4d4ddec268fc5c7112cbb265e7.jpg', NULL, 2, '22114022', 3, NULL, NULL, NULL, NULL),
(926, '22316012', 'Galuh abada', '082268378074', 'Laki-Laki', '316', 1, 9, 'Terbata Bata', 'Screenshot_2022-09-29-19-15-16-89_99c04817c0de5652397fc8b56c3b3817.jpg', 'lunas', 2, '130504', 3, NULL, NULL, NULL, NULL),
(927, '22311014', 'ahmad winata', '085809238312', 'Laki-Laki', '311', 3, 9, 'Lancar', 'Screenshot_2022-10-08-10-44-39-86.jpg', 'lunas', 2, '22311014', 3, NULL, NULL, NULL, NULL),
(928, '22316071', 'Bhaswara Daegal Ramadhan', '082293924812', 'Laki-Laki', '316', 2, 9, 'Terbata Bata', '0D311C61-2EDD-4A9D-B20C-99071617DFF5.png', 'lunas', 2, '22316071', 3, NULL, NULL, NULL, NULL),
(929, '22311071', 'Dendi Kaina Mirtirama', '082183580389', 'Laki-Laki', '311', 2, 9, 'Tidak Bisa Membaca', '6E1F957D-8C4B-4CD6-9B54-0B7708E90D62.jpeg', 'lunas', 2, '22311071', 3, NULL, NULL, NULL, NULL),
(930, '22412010', 'Elva Ari Santi', '081996339507', 'Perempuan', '412', 1, 9, 'Lancar', 'Screenshot_20220924_162809.jpg', NULL, 2, '22412010', 3, NULL, NULL, NULL, NULL),
(931, '22311008', 'Dina Nurmala', '081369321012', 'Perempuan', '311', 15, 9, 'Lancar', 'Screenshot_20220926_154013.jpg', 'lunas', 2, '11122000', 3, NULL, NULL, NULL, NULL),
(932, '22114010', 'JOKO SUTIANTO', '0895360449688', 'Laki-Laki', '114', 1, 9, 'Tidak Bisa Membaca', 'IMG_20221008_105622.jpg', 'lunas', 2, '22114010', 3, NULL, NULL, NULL, NULL),
(933, '22311100', 'Diky Dwi Haryono', '089633433949', 'Laki-Laki', '311', 3, 9, 'Lancar', 'Screenshot_20221008-110131_WhatsApp.jpg', 'lunas', 2, '22311100', 3, NULL, NULL, NULL, NULL),
(934, '22311077', 'Yuli Asti Putri', '089522015780', 'Perempuan', '311', 2, 9, 'Lancar', 'IMG_20221008_110119.jpg', 'lunas', 2, 'Putri123*', 3, NULL, NULL, NULL, NULL),
(935, '22311088', 'Septianingsih', '085841103397', 'Perempuan', '311', 2, 9, 'Terbata Bata', 'IMG-20221008-WA0029.jpg', 'lunas', 2, '22311088', 3, NULL, NULL, NULL, NULL),
(936, '22411055', 'Yolanda Mutiara', '088286305191', 'Perempuan', '411', 5, 9, 'Terbata Bata', 'IMG-20221005-WA0037_1.jpg', 'lunas', 2, '22411055', 3, NULL, NULL, NULL, NULL),
(937, '22411115', 'Dhinda Rahmadhanty', '083140701175', 'Perempuan', '411', 5, 9, 'Lancar', '41726D6B-7400-47AC-9C31-4CB4FEFFD53B.jpeg', 'lunas', 2, '22411115', 3, NULL, NULL, NULL, NULL),
(938, '22411049', 'NUR ANISA OKTAFIA ', '081345488040', 'Perempuan', '411', 5, 9, 'Lancar', 'IMG_20221008_110523.jpg', 'lunas', 2, '22411049', 3, NULL, NULL, NULL, NULL),
(939, '22114019', 'Pitri Herna Pia', '087899804791', 'Perempuan', '114', 2, 9, 'Terbata Bata', 'IMG-20221005-WA0042.jpg', 'lunas', 2, '22114019', 3, NULL, NULL, NULL, NULL),
(940, '22411205', 'Rivani Alamsyah', '085267508456', 'Laki-Laki', '411', 5, 9, 'Terbata Bata', 'F6276BB5-61FE-4AF8-9E6A-5909F217C527.jpeg', 'lunas', 2, '22411205', 3, NULL, NULL, NULL, NULL),
(941, '22311118', 'Reza zaynury winata', '085838137118', 'Laki-Laki', '311', 3, 9, 'Terbata Bata', 'Screenshot_2022-10-08-11-21-06-992_cn.wps.moffice_eng.jpg', 'lunas', 2, '22311118', 3, NULL, NULL, NULL, NULL),
(942, '22311079', 'Dimas Rizky Ramadhan', '082172259315', 'Laki-Laki', '311', 2, 9, 'Terbata Bata', 'Screenshot_20220927-182144.png', 'lunas', 2, '22311079', 3, NULL, NULL, NULL, NULL),
(943, '22311095', 'Muhammad Igo Gusmantoro', '085269589236', 'Laki-Laki', '311', 3, 9, 'Terbata Bata', 'F805FA7B-F10A-46C0-A1B2-E518813C1A63.jpeg', 'lunas', 2, '22311095', 3, NULL, NULL, NULL, NULL),
(944, '22316062', 'Akbar Fitra Khusuma', '083897022798', 'Laki-Laki', '316', 2, 9, 'Terbata Bata', 'Screenshot_20221007-183939_Drive.jpg', 'lunas', 2, '22316062', 3, NULL, NULL, NULL, NULL),
(945, '22411214', 'SISILIA MANDA AGUSTIA ', '085936713761', 'Perempuan', '411', 5, 9, 'Terbata Bata', 'IMG-20221008-WA0004.jpg', 'lunas', 2, '22411214', 3, NULL, NULL, NULL, NULL),
(946, '22411208', 'ummi ayu wahyuni', '089606003533', 'Perempuan', '411', 5, 9, 'Lancar', '530D3FEF-D52E-49CC-AA10-01C7AE3BB36F.png', 'lunas', 2, '22411208', 3, NULL, NULL, NULL, NULL),
(947, '22311124', 'Agung Akbara', '085771860973', 'Laki-Laki', '311', 2, 9, 'Lancar', 'IMG_20221008_120808.jpg', 'lunas', 2, '22311124', 3, NULL, NULL, NULL, NULL),
(948, '22114038', 'Chandra Audi Hafidz', '089629148555', 'Laki-Laki', '114', 2, 9, 'Tidak Bisa Membaca', 'A2CC7A9A-857E-4D4E-A8E9-4F146A174EC5.jpeg', 'lunas', 2, '22114038', 3, NULL, NULL, NULL, NULL),
(949, '22411014', 'Amanda putri genesti ', '0895609810069', 'Perempuan', '411', 1, 9, 'Terbata Bata', '80AB4225-6E5C-4606-AADB-81B34F3487C1.png', 'lunas', 2, '22411014', 3, NULL, NULL, NULL, NULL),
(950, '22411063', 'ZATRA MESA ALMATIN', '085282697137', 'Laki-Laki', '411', 5, 9, 'Lancar', 'IMG-20221008-WA0022.jpg', 'lunas', 2, '22411063', 3, NULL, NULL, NULL, NULL),
(951, '22411048', 'Fenika Elis Tia', '085764651649', 'Perempuan', '411', 5, 9, 'Terbata Bata', 'WhatsApp Image 2022-10-08 at 12.29.57.jpeg', 'lunas', 2, '22411048', 3, NULL, NULL, NULL, NULL),
(952, '22114024', 'Akbar Wendi Sulistyo', '082179346267', 'Laki-Laki', '114', 1, 9, 'Terbata Bata', 'ACDA8C78-7D2B-4728-8D2D-CEF44DBCFF9E.jpeg', NULL, 2, '22114024', 3, NULL, NULL, NULL, NULL),
(953, '22114025', 'Matin Attaqi', '085959330792', 'Laki-Laki', '114', 2, 9, 'Terbata Bata', 'PO 22B 20221008_132705.jpg', 'lunas', 2, '22114025', 3, NULL, NULL, NULL, NULL),
(954, '22114035', 'Romario Zamdar ', '085766612504', 'Laki-Laki', '114', 1, 9, 'Terbata Bata', 'Screenshot_2022-10-08-11-48-05-73_6012fa4d4ddec268fc5c7112cbb265e7.jpg', 'lunas', 2, '22114035', 3, NULL, NULL, NULL, NULL),
(955, '22114007', 'FERRY ALDINATA', '085382487288', 'Laki-Laki', '114', 1, 9, 'Terbata Bata', 'E695ECC8-97D8-4EBF-8FB8-795647A181EB.png', 'lunas', 2, '22114007', 3, NULL, NULL, NULL, NULL),
(956, '22114004', 'Ferry tri setiawan ', '085783333878', 'Laki-Laki', '114', 1, 9, 'Terbata Bata', 'Screenshot_2022-10-08-13-33-42-23_99c04817c0de5652397fc8b56c3b3817.jpg', NULL, 2, '22114004', 3, NULL, NULL, NULL, NULL),
(957, '22411150', 'Rico ramadhan putra', '083166683773', 'Laki-Laki', '411', 2, 9, 'Terbata Bata', 'E2DD750F-827A-4358-89A8-C60CF0A0ECD0.png', NULL, 2, '22411150', 3, NULL, NULL, NULL, NULL),
(958, '22114032', 'alfath nurfadlillah', '08877389223', 'Laki-Laki', '114', 1, 9, 'Terbata Bata', 'F19A2194-C056-450E-895A-29352B031449.jpeg', NULL, 2, '22114032', 3, NULL, NULL, NULL, NULL),
(959, '22114063', 'Bagus', '082181532148', 'Laki-Laki', '114', 1, 9, 'Terbata Bata', 'IMG-20220928-WA0001.jpg', 'lunas', 2, '22114063', 3, NULL, NULL, NULL, NULL),
(960, '22411196', 'Rachela citra prameswari', '081272686072', 'Perempuan', '411', 3, 9, 'Tidak Bisa Membaca', '9746F5C9-DFD6-4FBE-9F97-79DAA4B252B1.jpeg', 'lunas', 2, '22411196', 3, NULL, NULL, NULL, NULL),
(961, '22114031', 'Dicko Pratama ', '081279159006', 'Laki-Laki', '114', 1, 9, 'Lancar', 'Screenshot_20221007_183339.jpg', 'lunas', 2, '22114031', 3, NULL, NULL, NULL, NULL);
INSERT INTO `peserta` (`id_peserta`, `npm_peserta`, `nama_peserta`, `nomor_wa`, `jk`, `id_jurusan`, `id_kelas`, `dosen_id`, `kelancaran_mengaji`, `jadwal_kuliah`, `keterangan`, `gelombang`, `password`, `level`, `pilgan`, `makhroj`, `tajwid`, `ket`) VALUES
(962, '22311062', 'Novi Purnamasari', '085866517482', 'Perempuan', '311', 2, 9, 'Terbata Bata', '626CA01D-00F2-4266-9AF5-8476C0E030DB.png', 'lunas', 2, '22311062', 3, NULL, NULL, NULL, NULL),
(963, '22311068', 'Maria Angelina Luisa Makin ', '081353869949', 'Perempuan', '311', 2, 9, 'Tidak Bisa Membaca', 'Screenshot_20221011-112133_WhatsApp.jpg', 'lunas', 2, '22311068', 3, NULL, NULL, NULL, NULL),
(964, '22311066', 'Agvina Maharani ', '082246441950', 'Perempuan', '311', 2, 9, 'Terbata Bata', 'Screenshot_2022-10-06-16-41-21-83.jpg', 'lunas', 2, '22311066', 3, NULL, NULL, NULL, NULL),
(965, '22311104', 'Kia Trio Saputra', '081532519293', 'Laki-Laki', '311', 3, 9, 'Terbata Bata', 'Screenshot_2022-09-28-11-03-52-78_c37d74246d9c81aa0bb824b57eaf7062.jpg', 'lunas', 2, '22311104', 3, NULL, NULL, NULL, NULL),
(966, '22114021', 'Akhmad Haikal Afriansyah', '0821933406', 'Laki-Laki', '114', 1, 9, 'Terbata Bata', 'Screenshot_2022-10-11-10-48-41-069_com.whatsapp.jpg', 'lunas', 2, '22114021', 3, NULL, NULL, NULL, NULL),
(967, '22315017', 'Wahyu Syah putra', '081330336970', 'Laki-Laki', '315', 1, 9, 'Terbata Bata', 'IMG_20221007_082221.jpg', 'lunas', 2, '22315017', 3, NULL, NULL, NULL, NULL),
(968, '22315028', 'M Faiz Lujain', '089601085144', 'Laki-Laki', '315', 1, 9, 'Terbata Bata', 'Screenshot_20221003-184510.jpg', NULL, 2, '22315028', 3, NULL, NULL, NULL, NULL),
(969, '22315024', 'AM HARTONO Z', '0821795324447', 'Laki-Laki', '315', 1, 9, 'Terbata Bata', 'IMG-20221009-WA0010.jpg', 'lunas', 2, '22315024', 3, NULL, NULL, NULL, NULL),
(970, '22316015', 'Khusnul Edistira', '082197009485', 'Perempuan', '316', 1, 9, 'Lancar', 'Screenshot_20220923_174504.jpg', 'lunas', 2, '22316015', 3, NULL, NULL, NULL, NULL),
(971, '22411134', 'Sari Wulan Dari ', '085841653400', 'Perempuan', '411', 3, 9, 'Lancar', 'Screenshot_2022-10-10-10-59-28-05_6012fa4d4ddec268fc5c7112cbb265e7.jpg', 'lunas', 2, '22411134', 3, NULL, NULL, NULL, NULL),
(972, '22411160', 'Chyta Lesveva Pangesti Widagdo ', '085840044745', 'Perempuan', '411', 3, 9, 'Lancar', 'IMG_20221008_193040.jpg', 'lunas', 2, '22411160', 3, NULL, NULL, NULL, NULL),
(973, '22316018', 'Fadhel Akbar Alfattah ', '08999768070', 'Laki-Laki', '316', 1, 9, 'Terbata Bata', 'Screenshot_20221004-094517.jpg', 'lunas', 2, '22316018', 3, NULL, NULL, NULL, NULL),
(974, '22411151', 'Heni Ramadhani', '088287920365', 'Perempuan', '411', 3, 9, 'Lancar', 'IMG-20221011-WA0043.jpg', 'lunas', 2, '22411151', 3, NULL, NULL, NULL, NULL),
(975, '22316019', 'Raihan Akhdan Naufal Magda', '089615314295', 'Laki-Laki', '316', 1, 9, 'Terbata Bata', 'TK 22 A.jpg', 'lunas', 2, '22316019', 3, NULL, NULL, NULL, NULL),
(976, '22114003', 'Revan Zulio Ramonda', '085731452426', 'Laki-Laki', '114', 1, 9, 'Lancar', 'Screenshot_2022-10-08-18-42-29-52_e2d5b3f32b79de1d45acd1fad96fbb0f.jpg', 'lunas', 2, '22114003', 3, NULL, NULL, NULL, NULL),
(977, '22411008', 'Muhammad Dimas Aditya F', '082154266828', 'Laki-Laki', '411', 1, 9, 'Terbata Bata', 'Screenshot_2022-10-11-06-59-56-969_com.whatsapp.jpg', 'lunas', 2, '22411008', 3, NULL, NULL, NULL, NULL),
(978, '22114029', 'Farhan Jami Imanulloh ', '08976151295', 'Laki-Laki', '114', 2, 9, 'Lancar', 'Screenshot_2022-10-08-18-18-28-16_6012fa4d4ddec268fc5c7112cbb265e7.jpg', 'lunas', 2, '22114029', 3, NULL, NULL, NULL, NULL),
(979, '22114027', 'Veny chyadhi ', '08983322099', 'Laki-Laki', '114', 2, 9, 'Lancar', 'Screenshot_2022-10-09-00-47-00-814_com.miui.home.jpg', 'lunas', 2, '22114027', 3, NULL, NULL, NULL, NULL),
(980, '22311101', 'Rayhan Bisyane', '081290104184', 'Laki-Laki', '311', 1, 9, 'Terbata Bata', '9F5CEE5D-D650-4295-A8D7-01382F96626B.jpeg', 'lunas', 2, '22311101', 3, NULL, NULL, NULL, NULL),
(981, '22316022', 'ROHIM HIDAYATULLAH', '085709382336', 'Laki-Laki', '316', 1, 9, 'Terbata Bata', 'IMG-20220926-WA0002.jpg', NULL, 2, '22316022', 3, NULL, NULL, NULL, NULL),
(982, '22311122', 'Muhammad adil hakim ', '089602762286', 'Laki-Laki', '311', 15, 9, 'Lancar', 'Screenshot_20221008_230221.jpg', 'lunas', 2, '22311122', 3, NULL, NULL, NULL, NULL),
(983, '22114057', 'AYI NUR AHMAD ', '089506416191', 'Laki-Laki', '114', 2, 9, 'Terbata Bata', 'IMG-20221005-WA0038~2_3.jpg', 'lunas', 2, '22114057', 3, NULL, NULL, NULL, NULL),
(984, '22114049', 'Rizki Farhan Annafi', '085839038947', 'Laki-Laki', '114', 2, 9, 'Lancar', 'IMG-20221005-WA0026.jpg', 'lunas', 2, '22114049', 3, NULL, NULL, NULL, NULL),
(985, '22316031', 'Alfian rifandi', '087817212159', 'Laki-Laki', '316', 1, 1, 'Terbata Bata', 'IMG_20220926_232451.jpg', 'lunas', 2, '22316031', 3, NULL, NULL, NULL, NULL),
(986, '22114064', 'Bayu Adi Nugraha ', '082269491558', 'Laki-Laki', '114', 1, 9, 'Terbata Bata', 'Screenshot_2022-10-08-19-07-39-69_6012fa4d4ddec268fc5c7112cbb265e7.jpg', NULL, 2, '22114064', 3, NULL, NULL, NULL, NULL),
(987, '22111046', 'Yola Elvina Fersilia ', '089618290060', 'Perempuan', '111', 1, 9, 'Lancar', 'Screenshot_20221010_133621.jpg', 'lunas', 2, '22111046', 3, NULL, NULL, NULL, NULL),
(988, '22114047', 'FADILLAH FATURRAHMAN ', '082237371498', 'Laki-Laki', '114', 1, 9, 'Terbata Bata', 'Screenshot_20221008-183532.jpg', 'lunas', 2, '22114047', 3, NULL, NULL, NULL, NULL),
(989, '22114006', 'TRI GIANTORO BHAKTI', '082375120450', 'Laki-Laki', '114', 1, 9, 'Terbata Bata', 'IMG-20221008-WA0100.jpg', 'lunas', 2, '22114006', 3, NULL, NULL, NULL, NULL),
(990, '22411141', 'IBNU ABBAS FAKHRUDDIN ', '081996874608', 'Laki-Laki', '411', 2, 9, 'Terbata Bata', 'Screenshot_2022-09-24-17-20-20-80.jpg', 'lunas', 2, '22411141', 3, NULL, NULL, NULL, NULL),
(991, '22411005', 'Ahmad Fauzi', '082183789042', 'Laki-Laki', '411', 1, 9, 'Terbata Bata', 'Screenshot_2022-10-09-20-25-22-42.jpg', 'lunas', 2, '22411005', 3, NULL, NULL, NULL, NULL),
(992, '22114034', 'Adya Adiguna ', '085367317231', 'Laki-Laki', '114', 2, 9, 'Tidak Bisa Membaca', 'IMG_20221008_173052.jpg', 'lunas', 2, '22114034', 3, NULL, NULL, NULL, NULL),
(993, '22316032', 'MUHAMAD AKBAR OKTARIZI', '085789657569', 'Laki-Laki', '316', 1, 9, 'Terbata Bata', 'IMG-20220924-WA0029.jpg', 'lunas', 2, '121003', 3, NULL, NULL, NULL, NULL),
(994, '22315016', 'Nazwa Adelia', '088276772096', 'Perempuan', '315', 1, 9, 'Terbata Bata', 'Screenshot_20221011_093028.jpg', 'lunas', 2, '22315016', 3, NULL, NULL, NULL, NULL),
(995, '22114009', 'Aji Pangestu', '087817194223', 'Laki-Laki', '114', 1, 9, 'Terbata Bata', '13B91944-B501-4723-A095-E9F0CC77A962.jpeg', 'lunas', 2, '22114009', 3, NULL, NULL, NULL, NULL),
(996, '22411020', 'Zulfian Almaliki ', '085769501384', 'Laki-Laki', '411', 1, 9, 'Terbata Bata', 'IMG_20221008_085552.jpg', 'lunas', 2, '22411020', 3, NULL, NULL, NULL, NULL),
(997, '22411039', 'Randy Chandra Weldy', '0895372808588', 'Laki-Laki', '411', 1, 9, 'Terbata Bata', 'Screenshot_20221008-161627.jpg', 'lunas', 2, '22411039', 3, NULL, NULL, NULL, NULL),
(998, '22315009', 'gilang putra wijayanto', '085841925142', 'Laki-Laki', '315', 1, 9, 'Terbata Bata', '69309A2B-0E37-479B-9674-861172BF6383.jpeg', 'lunas', 2, 'Gilang800*', 3, NULL, NULL, NULL, NULL),
(999, '22411047', 'Annisa Yulia', '085769441025', 'Perempuan', '411', 5, 9, 'Terbata Bata', 'Screenshot_20221008_144702.jpg', 'lunas', 2, '22411047', 3, NULL, NULL, NULL, NULL),
(1000, '22114017', 'Natasya Ayu Ramdhani ', '089503640406', 'Perempuan', '114', 1, 9, 'Lancar', 'IMG_20221008_215736.jpg', 'lunas', 2, '22114017', 3, NULL, NULL, NULL, NULL),
(1001, '22411198', 'Danu Aji Nugroho', '085840535681', 'Laki-Laki', '411', 3, 9, 'Terbata Bata', 'Screenshot_2022-10-10-19-23-58-845_com.whatsapp.jpg', 'lunas', 2, '22411198', 3, NULL, NULL, NULL, NULL),
(1002, '22316013', 'Rendy Tegar Prakoso ', '081295501634', 'Laki-Laki', '316', 1, 9, 'Terbata Bata', 'IMG-20221011-WA0004.jpg', NULL, 2, 'rendyyy', 3, NULL, NULL, NULL, NULL),
(1003, '22114059', 'MUHAMMAD FATAHILLAH', '082310502995', 'Laki-Laki', '114', 2, 9, 'Terbata Bata', 'JADWAL.jpeg', 'lunas', 2, '22114059', 3, NULL, NULL, NULL, NULL),
(1004, '22111004', 'Reza Adha Putra ', '85832071074', 'Laki-Laki', '111', 1, 9, 'Tidak Bisa Membaca', 'IMG-20220924-WA0042.jpg', 'lunas', 2, '22111004', 3, NULL, NULL, NULL, NULL),
(1005, '22111029', 'Hairun Nisa Napitupulu ', '085763894834', 'Perempuan', '111', 2, 9, 'Terbata Bata', 'IMG-20221008-WA0003.jpg', 'lunas', 2, '22111029', 3, NULL, NULL, NULL, NULL),
(1006, '22411200', 'Bagas Prayoga', '083149136337', 'Laki-Laki', '411', 3, 9, 'Lancar', 'IMG_20221011_221248.jpg', 'lunas', 2, '22411200', 3, NULL, NULL, NULL, NULL),
(1007, '22111032', 'Falah Muzaqqi Aljazera ', '0895610040840', 'Laki-Laki', '111', 2, 9, 'Terbata Bata', '569DF87C-9A09-421C-8CF0-E277DDC488B9.jpeg', 'lunas', 2, '22111032', 3, NULL, NULL, NULL, NULL),
(1008, '22315008', 'Deo Junial Saputra', '081279253490', 'Laki-Laki', '315', 1, 9, 'Lancar', 'jadwal kuliah.jpg', 'lunas', 2, 'Deo070604', 3, NULL, NULL, NULL, NULL),
(1009, '22114037', 'Wahyu ilyas', '085709316713', 'Laki-Laki', '114', 1, 9, 'Terbata Bata', 'Screenshot_20221008-181453~2.png', NULL, 2, '22114037', 3, NULL, NULL, NULL, NULL),
(1010, '22411086', 'Dina Muktar ', '081278855345', 'Perempuan', '411', 3, 9, 'Terbata Bata', 'IMG_20221012_094353.jpg', 'lunas', 2, '22411086', 3, NULL, NULL, NULL, NULL),
(1011, '22411185', 'DINDI NOVIA RISMA PUTRI', '082211719622', 'Perempuan', '411', 3, 9, 'Terbata Bata', 'B060C75C-7A05-4D2C-9279-76B78D77FC22.png', 'lunas', 2, '22411185', 3, NULL, NULL, NULL, NULL),
(1012, '22114036', 'RIDHO PERMANA PUTRA ', '0895606014574', 'Laki-Laki', '114', 1, 9, 'Terbata Bata', 'Screenshot_2022-10-12-09-59-14-45.png', NULL, 2, '22114036', 3, NULL, NULL, NULL, NULL),
(1013, '22411154', 'Susi Nuraini ', '082374810839', 'Perempuan', '411', 2, 9, 'Tidak Bisa Membaca', 'Screenshot_20221012_095842.jpg', 'lunas', 2, '22411154', 3, NULL, NULL, NULL, NULL),
(1014, '22411082', 'Monica Martin', '089517533120', 'Perempuan', '411', 2, 9, 'Lancar', 'Screenshot_20220927-060604_Samsung Internet_1.jpg', NULL, 2, '22411082', 3, NULL, NULL, NULL, NULL),
(1015, '22231005', 'Siska Amelia ', '083172577093', 'Perempuan', '231', 1, 9, 'Terbata Bata', 'IMG_1002.PNG', 'lunas', 2, 'Siska1801', 3, NULL, NULL, NULL, NULL),
(1016, '22316054', 'Ahmad Fanani', '081271445359', 'Laki-Laki', '316', 2, 9, 'Terbata Bata', 'IMG_20221012_110531.jpg', NULL, 2, '22316054', 3, NULL, NULL, NULL, NULL),
(1017, '22316045', 'RESTU YUDHA UTAMA', '08987569223', 'Laki-Laki', '316', 2, 9, 'Lancar', 'IMG_20221012_111353.jpg', 'lunas', 2, '22316045', 3, NULL, NULL, NULL, NULL),
(1018, '22411062', 'Yunita Putri Danisa', '082231774126', 'Perempuan', '411', 1, 9, 'Lancar', 'IMG_2825.jpg', 'lunas', 2, '22411062', 3, NULL, NULL, NULL, NULL),
(1019, '22316009', 'Nur Rahmatullah', '089616874151', 'Laki-Laki', '316', 1, 9, 'Terbata Bata', 'Screenshot_20220923-141015.png', NULL, 2, '22316009', 3, NULL, NULL, NULL, NULL),
(1020, '22411099', 'Ayu Neha Septiarini', '089628805145', 'Perempuan', '411', 3, 9, 'Lancar', '39E89B8B-ACD6-45EF-AFB6-31698047B97C.png', 'lunas', 2, '22411099', 3, NULL, NULL, NULL, NULL),
(1021, '22311048', 'Destaria hayatunnisa', '082289542758', 'Perempuan', '311', 15, 9, 'Lancar', 'Screenshot_20221012_115449.jpg', 'lunas', 2, '22311048', 3, NULL, NULL, NULL, NULL),
(1022, '22411117', 'Rintan cahya rani', '082289510267', 'Perempuan', '411', 3, 9, 'Lancar', '706AF5B0-B76D-40CE-8654-B6B57781D708.jpeg', 'lunas', 2, '22411117', 3, NULL, NULL, NULL, NULL),
(1023, '22411212', 'DIRGA RIFQI ANDHIKA ', '085768116209', 'Laki-Laki', '411', 5, 9, 'Terbata Bata', 'Screenshot_2022-10-10-20-54-02-82.jpg', 'lunas', 2, '22411212', 3, NULL, NULL, NULL, NULL),
(1024, '22316069', 'Renaldi Indra Saputra ', '082126129094', 'Laki-Laki', '316', 2, 9, 'Lancar', 'Screenshot_2022-09-28-19-32-49-18_c37d74246d9c81aa0bb824b57eaf7062.jpg', 'lunas', 2, '22316069', 3, NULL, NULL, NULL, NULL),
(1025, '22316003', 'Rizki Devi Anggita', '083170836751', 'Perempuan', '316', 1, 9, 'Terbata Bata', 'IMG-20221011-WA0004_1.jpg', 'lunas', 2, '22316003', 3, NULL, NULL, NULL, NULL),
(1026, '22411162', 'Tasya Armania Putri', '087772078717', 'Perempuan', '411', 3, 9, 'Lancar', 'Screenshot_2022-10-12-14-20-29-27.jpg', 'lunas', 2, '22411162', 3, NULL, NULL, NULL, NULL),
(1027, '22411057', 'Denny wahyudi putra', '082312544512', 'Laki-Laki', '411', 3, 9, 'Terbata Bata', 'Screenshot_2022-10-07-10-47-59-807_com.miui.gallery.jpg', 'lunas', 2, '22411057', 3, NULL, NULL, NULL, NULL),
(1028, '22411215', 'Andhita Prameswari', '089616019908', 'Perempuan', '411', 15, 9, 'Terbata Bata', 'Screenshot_20221001_170721.jpg', 'lunas', 2, '22411215', 3, NULL, NULL, NULL, NULL),
(1029, '22411116', 'Syania Ivanny Effendi', '082371995161', 'Perempuan', '411', 2, 9, 'Terbata Bata', '8206E07D-FBFA-4822-9CE5-EFBD523DFA52.jpeg', 'lunas', 2, '22411116', 3, NULL, NULL, NULL, NULL),
(1030, '22411168', 'Agnes Jovita', '081278474392', 'Perempuan', '411', 2, 9, 'Terbata Bata', 'Screenshot_20220928-063449_Samsung Internet.jpg', 'lunas', 2, '22411168', 3, NULL, NULL, NULL, NULL),
(1031, '22411155', 'Ulvie Fadila', '081532206405', 'Perempuan', '411', 2, 9, 'Terbata Bata', '2F854675-C8AB-4896-8DD6-28ACCC8442FD.png', 'lunas', 2, '22411155', 3, NULL, NULL, NULL, NULL),
(1032, '22111041', 'Fajri Septa Firnando', '085788814275', 'Laki-Laki', '111', 2, 9, 'Terbata Bata', 'Screenshot_20221012_150249.jpg', 'lunas', 2, '22111041', 3, NULL, NULL, NULL, NULL),
(1033, '22113013', 'salsa aulia rahma', '083153997441', 'Perempuan', '113', 1, 9, 'Terbata Bata', '6E2FB007-2847-4FDA-8B62-F245DFF98C1F.png', 'lunas', 2, '22113013', 3, NULL, NULL, NULL, NULL),
(1034, '22315005', 'Diki adi saputra', '083168174260', 'Laki-Laki', '315', 1, 9, 'Lancar', 'Screenshot_2022-10-04-08-13-07-581_com.intsig.camscanner.jpg', 'lunas', 2, 'Diki123', 3, NULL, NULL, NULL, NULL),
(1036, '18114046', 'Muhammad prastyo utomo', '088276291473', 'Laki-Laki', '114', 1, 9, 'Terbata Bata', 'C7FEC659-B47C-4964-B06B-319021452EFD.jpeg', 'lunas', 2, '18114046', 3, NULL, NULL, NULL, NULL),
(1037, '22311107', 'Nur kholis', '085709094015', 'Laki-Laki', '311', 3, 9, 'Terbata Bata', 'IMG-20221012-WA0030.jpg', 'lunas', 2, '22311107', 3, NULL, NULL, NULL, NULL),
(1038, '22114040', 'Najib', '08578318834', 'Laki-Laki', '114', 2, 9, 'Terbata Bata', 'IMG-20221005-WA0075.jpg', NULL, 2, '22114040', 3, NULL, NULL, NULL, NULL),
(1039, '22315012', 'Muhammad Zaeni ', '081772829414', 'Laki-Laki', '315', 1, 9, 'Lancar', 'IMG-20221003-WA0033_1.jpg', NULL, 2, '22315012', 3, NULL, NULL, NULL, NULL),
(1040, '22411163', 'ZENI BUDIARTI', '085832367078', 'Perempuan', '411', 5, 9, 'Terbata Bata', '1664952694907.jpg', 'lunas', 2, '22411163', 3, NULL, NULL, NULL, NULL),
(1041, '22114053', 'Bima Nauval fikri', '083170249671', 'Laki-Laki', '114', 2, 9, 'Lancar', 'Screenshot_20221012-222040_Gallery.jpg', NULL, 2, '22114053', 3, NULL, NULL, NULL, NULL),
(1042, '22311060', 'Ade Firmansyah', '0895620591463', 'Laki-Laki', '311', 2, 9, 'Terbata Bata', 'Screenshot_20221012-222632_Gallery.jpg', 'lunas', 2, '22311060', 3, NULL, NULL, NULL, NULL),
(1043, '17411211', 'Anastasya', '089628238317', 'Perempuan', '411', 15, 9, 'Terbata Bata', 'WhatsApp Image 2022-10-12 at 23.22.43.jpeg', 'lunas', 2, '17411211', 3, NULL, NULL, NULL, NULL),
(1044, '22231009', 'Yolla florenza ', '085609527267', 'Perempuan', '231', 1, 9, 'Lancar', 'IMG_20221009_085609.jpg', 'lunas', 2, '22231009', 3, NULL, NULL, NULL, NULL),
(1045, '22316027', 'M Faqih Azkian', '083805477078', 'Laki-Laki', '316', 1, 9, 'Lancar', 'IMG-20221011-WA0011.jpg', 'lunas', 2, 'azkian2004', 3, NULL, NULL, NULL, NULL),
(1046, '22114042', 'LUTFI ABI ALAMSYAH ', '082372271058', 'Laki-Laki', '114', 2, 9, 'Terbata Bata', 'Screenshot_2022-09-25-19-35-49-57.jpg', NULL, 2, '22114042', 3, NULL, NULL, NULL, NULL),
(1047, '22114002', 'Rizal mustofa', '085609553634', 'Laki-Laki', '114', 1, 9, 'Terbata Bata', '148F6568-C926-4BBF-9464-017513F49418.jpeg', NULL, 2, '22114002', 3, NULL, NULL, NULL, NULL),
(1048, '22114062', 'Tubagus dede kurnia sandi', '085783023668', 'Laki-Laki', '114', 1, 9, 'Tidak Bisa Membaca', '2022_10_11_14.53.29.jpg', NULL, 2, '22114062', 3, NULL, NULL, NULL, NULL),
(1049, '22111038', 'Novendra Dewanto ', '08978626606', 'Laki-Laki', '111', 1, 9, 'Lancar', 'Screenshot_2022-09-25-17-54-37-918_com.google.android.apps.docs.png', 'lunas', 2, '22111038', 3, NULL, NULL, NULL, NULL),
(1050, '22114144', 'Lidya Okta Siami', '082132929950', 'Perempuan', '411', 3, 9, 'Terbata Bata', 'Screenshot_20221013-150557_WhatsApp.jpg', 'lunas', 2, '22114144', 3, NULL, NULL, NULL, NULL),
(1051, '22111014', 'Hanny Wulandari Fernanto', '085789194390', 'Perempuan', '111', 2, 9, 'Terbata Bata', 'Screenshot_20221013-150453_Samsung Notes.jpg', 'lunas', 2, '22111014', 3, NULL, NULL, NULL, NULL),
(1052, '22111043', 'Alya Niswatul Fadilah ', '081371816213', 'Perempuan', '111', 2, 9, 'Terbata Bata', 'IMG-20221013-WA0025.jpg', 'lunas', 2, '22111043', 3, NULL, NULL, NULL, NULL),
(1053, '22411189', 'Nouval Arbi Adin', '085841900211', 'Laki-Laki', '411', 15, 9, 'Terbata Bata', '380B515C-C79D-43B1-891F-76A014FD9BF0.jpeg', 'lunas', 2, '22411189', 3, NULL, NULL, NULL, NULL),
(1054, '22411119', 'M Krisna Martine', '082278626184', 'Laki-Laki', '411', 15, 9, 'Tidak Bisa Membaca', 'Screenshot_2022-10-13-22-46-27-86_99c04817c0de5652397fc8b56c3b3817.jpg', 'lunas', 2, 'Kampang123@', 3, NULL, NULL, NULL, NULL),
(1055, '22411179', 'Syifa Luthfia', '08989156267', 'Perempuan', '411', 3, 9, 'Terbata Bata', 'Screenshot_2022-10-14-06-27-00-08.jpg', 'lunas', 2, '22411179', 3, NULL, NULL, NULL, NULL),
(1056, '22114051', 'Dwi Arya Andika', '082280586495', 'Laki-Laki', '114', 2, 9, 'Terbata Bata', 'Screenshot_2022-10-14-13-04-39-59.jpg', 'lunas', 2, '22114051', 3, NULL, NULL, NULL, NULL),
(1057, '22111024', 'Muhamad Zidan', '089508953478', 'Laki-Laki', '111', 1, 9, 'Terbata Bata', 'Screenshot_2022-10-14-16-05-05-792_com.whatsapp.jpg', 'lunas', 2, '22111024', 3, NULL, NULL, NULL, NULL),
(1058, '22311091', 'RAFIE RITHONDA HUTABARAT', '082372590697', 'Laki-Laki', '311', 3, 9, 'Terbata Bata', 'Screenshot_20221008-194106_Drive.jpg', 'lunas', 2, '22311091', 3, NULL, NULL, NULL, NULL),
(1059, '22411066', 'Widya Melati Putri ', '082177267272', 'Perempuan', '411', 3, 9, 'Lancar', '2F584F88-B9C4-446A-8374-75E69B1C660A.jpeg', 'lunas', 2, '22411066', 3, NULL, NULL, NULL, NULL),
(1060, '22311102', 'M Nur Izza Akbar Alfajri', '089628976570', 'Laki-Laki', '311', 15, 9, 'Terbata Bata', 'Screenshot_2022-10-15-11-28-18-58_e2d5b3f32b79de1d45acd1fad96fbb0f.jpg', NULL, 2, '22311102', 3, NULL, NULL, NULL, NULL),
(1061, '22411170', 'Nayu Asfira ', '089632115434', 'Perempuan', '411', 2, 9, 'Lancar', 'Screenshot_2022-10-01-14-26-46-69_99c04817c0de5652397fc8b56c3b3817.jpg', 'lunas', 2, '22411170', 3, NULL, NULL, NULL, NULL),
(1062, '18113033', 'Ahmadal pascalin', '082278220608', 'Laki-Laki', '113', 1, 9, 'Terbata Bata', 'IMG-20221017-WA0002.jpg', NULL, 2, '18113033', 3, NULL, NULL, NULL, NULL),
(1063, '22111028', 'Adenin Faradillah Setiawan', '0895609602508', 'Perempuan', '111', 2, 9, 'Lancar', 'IMG20220923200138.jpg', 'lunas', 2, '22111028', 3, NULL, NULL, NULL, NULL),
(1064, '22111044', 'Aprilia', '08988144946', 'Perempuan', '111', 2, 9, 'Terbata Bata', 'IMG-20220924-WA0148.jpg', 'lunas', 2, 'Namjoon12', 3, NULL, NULL, NULL, NULL),
(1065, '22316024', 'Bayu Satrio', '0895416454030', 'Laki-Laki', '316', 1, 9, 'Lancar', 'Screenshot_20221020_070435.jpg', 'lunas', 2, '22316024', 3, NULL, NULL, NULL, NULL),
(1066, '22315006', 'Jiri roma anggara ', '085269590619', 'Laki-Laki', '315', 1, 9, 'Terbata Bata', 'IMG-20221020-WA0016.jpg', NULL, 2, '22315006', 3, NULL, NULL, NULL, NULL),
(1067, '22411107', 'Adrian Maulana Ilham', '089633978830', 'Laki-Laki', '411', 3, 9, 'Terbata Bata', '8B9EBB12-D367-434A-AD41-1C75377F52BC.png', 'lunas', 2, '22411107', 3, NULL, NULL, NULL, NULL),
(1068, '22311098', 'Nisrina mozaya', '089632115440', 'Perempuan', '311', 3, 9, 'Lancar', 'Screenshot_20220923_165822.jpg', NULL, 2, 'Moza123.', 3, NULL, NULL, NULL, NULL),
(1069, '22311080', 'Indra Al Rasyid ', '089623716700', 'Laki-Laki', '311', 3, 9, 'Terbata Bata', 'IMG_20221019_192508.jpg', 'lunas', 2, '22311080', 3, NULL, NULL, NULL, NULL),
(1070, '22316016', 'Achmad Aditya Pratama', '081278762901', 'Laki-Laki', '316', 1, 9, 'Tidak Bisa Membaca', 'Screenshot_2022-10-13-17-04-10-84.jpg', 'lunas', 2, '22316016', 3, NULL, NULL, NULL, NULL),
(1071, '22411078', 'Deni setiawan', '083168721861', 'Laki-Laki', '411', 15, 1, 'Terbata Bata', 'IMG-20220927-WA0115.jpg', 'lunas', 2, '22411078', 3, NULL, NULL, NULL, NULL),
(1072, '22412025', 'Widya Ardana', '083897017304', 'Perempuan', '412', 1, 9, 'Lancar', 'A27C9072-FBE6-4E04-A91D-DAB969B62ABE.png', 'lunas', 2, '22412025', 3, NULL, NULL, NULL, NULL),
(1073, '22411171', 'Usivi Risfariga', '082269118424', 'Perempuan', '411', 2, 9, 'Terbata Bata', 'Screenshot_20220925_205631.jpg', 'lunas', 2, '22411171', 3, NULL, NULL, NULL, NULL),
(1074, '22311103', 'Bielal Sanjaya Rachman', '089634172185', 'Laki-Laki', '311', 3, 9, 'Terbata Bata', 'IMG-20221022-WA0023.jpg', 'lunas', 2, '22311103', 3, NULL, NULL, NULL, NULL),
(1075, '22111042', 'Nazaha Wafaqrana Azumar', '089508890503', 'Perempuan', '111', 1, 9, 'Terbata Bata', 'WhatsApp Image 2022-10-08 at 7.00.32 PM.jpeg', 'lunas', 2, '22111042', 3, NULL, NULL, NULL, NULL),
(1076, '22111009', 'Muhammad Khalifatus Syahid', '08557213776', 'Laki-Laki', '111', 1, 9, 'Lancar', 'WhatsApp Image 2022-10-08 at 7.00.32 PM_1.jpeg', NULL, 2, '22111009', 3, NULL, NULL, NULL, NULL),
(1077, '22114054', 'Ragil Untung Sutrisno ', '085366314120', 'Laki-Laki', '114', 2, 9, 'Lancar', 'IMG-20221005-WA0027.jpg', 'lunas', 2, '22114054', 3, NULL, NULL, NULL, NULL),
(1078, '22411101', 'Ressy Azhari ', '085788811012', 'Perempuan', '411', 3, 9, 'Terbata Bata', 'Screenshot_20221022_230205.jpg', 'lunas', 2, '22411101', 3, NULL, NULL, NULL, NULL),
(1080, '22113015', 'festyananta tharapa aini', '085783020972', 'Perempuan', '113', 1, 9, 'Lancar', 'A9CE56EA-9F1E-4F4C-BB07-92410BEB026B.png', 'lunas', 2, '22113015', 3, NULL, NULL, NULL, NULL),
(1081, '22113011', 'Mawar Fasillah', '0895394853844', 'Perempuan', '113', 1, 9, 'Lancar', 'Screenshot_20220925_192037.jpg', 'lunas', 2, '22113011', 3, NULL, NULL, NULL, NULL),
(1082, '22411172', 'Dinta Ariani ', '0895612244946', 'Perempuan', '411', 2, 9, 'Lancar', 'Screenshot_2022-09-24-16-36-27-30_439a3fec0400f8974d35eed09a31f914.jpg', 'lunas', 2, '22411172', 3, NULL, NULL, NULL, NULL),
(1083, '22113008', 'nirrasya annisa putri', '082282669042', 'Perempuan', '113', 1, 9, 'Lancar', 'Screenshot_20220925_192038.jpg', 'lunas', 2, '22113008', 3, NULL, NULL, NULL, NULL),
(1084, '22111039', 'NABILAH NUR TSABITAH', '087828072457', 'Perempuan', '111', 1, 9, 'Lancar', 'IMG-20220926-WA0010.jpg', 'lunas', 2, '22111039', 3, NULL, NULL, NULL, NULL),
(1085, '22411169', 'Fahri Riandi Manaf', '081273444530', 'Laki-Laki', '411', 2, 9, 'Terbata Bata', 'IMG_20221023_094521.jpg', 'lunas', 2, '#Inisayamanap10', 3, NULL, NULL, NULL, NULL),
(1086, '22111026', 'Kayla suci ramadhani ', '08976118016', 'Perempuan', '111', 1, 9, 'Terbata Bata', 'Screenshot_2022-10-23-09-54-15-58.png', 'lunas', 2, '22111026', 3, NULL, NULL, NULL, NULL),
(1087, '22111027', 'Rania Purisela Sutawan', '0895606229007', 'Perempuan', '111', 1, 9, 'Terbata Bata', '912B4650-D13B-4DD7-9AF7-4B43D9CC6851.jpeg', 'lunas', 2, '22111027', 3, NULL, NULL, NULL, NULL),
(1088, '22411143', 'Nazwa Amara Putri', '085874020224', 'Perempuan', '411', 3, 9, 'Terbata Bata', 'Screenshot_2022-09-24-16-27-52-99_e2d5b3f32b79de1d45acd1fad96fbb0f.jpg', NULL, 2, '22411143', 3, NULL, NULL, NULL, NULL),
(1089, '22111035', 'Indah', '082269783164', 'Perempuan', '111', 1, 9, 'Terbata Bata', 'Screenshot_2022-10-23-08-37-55-720_com.miui.gallery.jpg', 'lunas', 2, '22111035', 3, NULL, NULL, NULL, NULL),
(1090, '22411133', 'Fitria Nasiroh Yani', '085369481790', 'Perempuan', '411', 3, 9, 'Terbata Bata', '143BEF9F-E779-4F1F-9DF8-911A36482E04.png', NULL, 2, '22411133', 3, NULL, NULL, NULL, NULL),
(1091, '22411026', 'Mico Prayoga', '089519610869', 'Laki-Laki', '411', 1, 9, 'Terbata Bata', 'IMG_20221023_100409.jpg', 'lunas', 2, '22411026', 3, NULL, NULL, NULL, NULL),
(1092, '22411050', 'Ranfia Jian Jenita', '085766971993', 'Perempuan', '411', 5, 9, 'Lancar', 'CC00EE7F-8C65-4529-ADDF-F1067534C1BF.jpeg', 'lunas', 2, '22411050', 3, NULL, NULL, NULL, NULL),
(1093, '22411137', 'Ananda Cahaya Fitri Ivanka', '083804423337', 'Perempuan', '411', 3, 9, 'Terbata Bata', 'A07E326B-9819-41F4-8BD5-118A9D0B5EC3.jpeg', NULL, 2, '22411137', 3, NULL, NULL, NULL, NULL),
(1094, '22315021', 'Robby muhammad fazri', '08988050680', 'Laki-Laki', '315', 1, 9, 'Terbata Bata', '8FB95746-4EF1-459C-9933-50F40562C758.png', 'lunas', 2, '22315021', 3, NULL, NULL, NULL, NULL),
(1095, '22311082', 'Bintang Mahardinanta Sukmaji', '082289326544', 'Laki-Laki', '311', 3, 9, 'Tidak Bisa Membaca', 'IMG_2934-1-min.JPG', 'lunas', 2, 'BintangMahardinantaSukmaji7766033', 3, NULL, NULL, NULL, NULL),
(1096, '22316033', 'Fery maajid', '085783039876', 'Laki-Laki', '316', 1, 1, 'Terbata Bata', 'Screenshot_2022-10-13-19-03-32-732_cn.wps.moffice_eng.jpg', NULL, 2, '22316033', 3, NULL, NULL, NULL, NULL),
(1097, '22411158', 'M Rafli s', '0895702043915', 'Laki-Laki', '411', 2, 9, 'Terbata Bata', '4D8FE404-7F71-47C7-B335-A3C485063B22.png', 'lunas', 2, '22411158', 3, NULL, NULL, NULL, NULL),
(1098, '22113014', 'Yeyen Febria Humairoh ', '087895524035', 'Perempuan', '113', 1, 9, 'Lancar', 'Screenshot_2022-09-27-09-01-20-17_c37d74246d9c81aa0bb824b57eaf7062.jpg', 'lunas', 2, '22113014', 3, NULL, NULL, NULL, NULL),
(1099, '22411073', 'Satria Megi Sangjaya', '089525220236', 'Laki-Laki', '411', 2, 9, 'Tidak Bisa Membaca', '2306BD24-B275-4D41-984F-F4884E1591F1.png', NULL, 2, '22411073', 3, NULL, NULL, NULL, NULL),
(1101, '22411001', 'Nasywa Julia Sayyidina', '089531188435', 'Perempuan', '411', 1, 9, 'Terbata Bata', '0E8033D4-5213-45C8-A89F-140858EF9005.png', 'lunas', 2, '22411001', 3, NULL, NULL, NULL, NULL),
(1102, '22411167', 'Ageng Subara', '082286212801', 'Laki-Laki', '411', 2, 9, 'Terbata Bata', 'IMG-20221023-WA0009.jpg', 'lunas', 2, '@Ageng05', 3, NULL, NULL, NULL, NULL),
(1103, '22114015', 'Leony Khairunnisa', '085357205067', 'Perempuan', '112', 1, 9, 'Terbata Bata', 'IMG-20220925-WA0054.jpg', 'belum', 2, '22114015', 3, NULL, NULL, NULL, NULL),
(1104, '22411178', 'Raja al bahri', '089633417088', 'Laki-Laki', '411', 15, 9, 'Terbata Bata', 'Screenshot_20221023-103244_WhatsApp.jpg', 'lunas', 2, '22411178', 3, NULL, NULL, NULL, NULL),
(1105, '22411007', 'Nabilah Syaputri', '081279108756', 'Perempuan', '411', 1, 9, 'Terbata Bata', 'Screenshot_20221023_103327.jpg', 'lunas', 2, '22411007', 3, NULL, NULL, NULL, NULL),
(1106, '22113016', 'Mareta Putriani ', '089659905440', 'Perempuan', '113', 1, 9, 'Lancar', 'Screenshot_2022-10-23-10-38-47-40_c37d74246d9c81aa0bb824b57eaf7062.jpg', 'lunas', 2, '22113016', 3, NULL, NULL, NULL, NULL),
(1107, '22315034 ', 'Septio Wisnu Wibowo ', '0895322161680', 'Laki-Laki', '315', 1, 9, 'Terbata Bata', 'IMG-20221003-WA0014_1.jpg', NULL, 2, '22315034 ', 3, NULL, NULL, NULL, NULL),
(1108, '22112002', 'Nabila Novia Sandra', '082199513551', 'Perempuan', '112', 1, 9, 'Terbata Bata', 'IMG_20221022_211915.jpg', 'lunas', 2, '22112002', 3, NULL, NULL, NULL, NULL),
(1109, '22311097', 'Al filly Fernando ', '0895366140703', 'Laki-Laki', '311', 3, 9, 'Terbata Bata', 'Screenshot_2022-10-23-10-52-36-09_c37d74246d9c81aa0bb824b57eaf7062.jpg', NULL, 2, '22311097', 3, NULL, NULL, NULL, NULL),
(1110, '22411147', 'Rendi Saputra', '085776499138', 'Laki-Laki', '411', 2, 9, 'Terbata Bata', 'D6326991-09CB-4048-9989-186D9BAF3228.jpeg', 'lunas', 2, '22411147', 3, NULL, NULL, NULL, NULL),
(1111, '22114012', 'Muhamad mikola anugrah ', '085714859652', 'Laki-Laki', '114', 1, 9, 'Terbata Bata', 'Screenshot_2022-10-23-11-02-44-402_com.whatsapp.jpg', 'lunas', 2, '110902', 3, NULL, NULL, NULL, NULL),
(1112, '22411204', 'M REHAN ARYADITO', '087850443114', 'Laki-Laki', '411', 3, 9, 'Lancar', 'IMG-20220926-WA0026.jpg', 'lunas', 2, '22411204', 3, NULL, NULL, NULL, NULL),
(1113, '22316038', 'Ahmad Fachri', '081271052769', 'Laki-Laki', '316', 2, 9, 'Terbata Bata', 'IMG_20221023_112755.jpg', NULL, 2, 'fachri123', 3, NULL, NULL, NULL, NULL),
(1114, '22231007', 'ELI YUNDARI', '0887437343555', 'Perempuan', '231', 1, 9, 'Terbata Bata', 'Screenshot_20221003-185041_Drive.jpg', 'lunas', 2, '22231007', 3, NULL, NULL, NULL, NULL),
(1115, '22231006', 'Nanda Aulia Putri ', '081298515801', 'Perempuan', '231', 1, 9, 'Lancar', 'IMG-20221003-WA0020.jpg', 'lunas', 2, '22231006', 3, NULL, NULL, NULL, NULL),
(1116, '22316042', 'Juandrio farma', '085764690626', 'Laki-Laki', '316', 2, 9, 'Terbata Bata', '50BB80B4-4C4E-46CF-BFEB-54EC5BC0E6A4.png', NULL, 2, '22316042', 3, NULL, NULL, NULL, NULL),
(1117, '22231008', 'ZENNY PRAWITA SARI ', '081377889986', 'Perempuan', '231', 1, 9, 'Terbata Bata', 'Screenshot_2022-10-23-12-17-40-91.jpg', 'lunas', 2, '22231008', 3, NULL, NULL, NULL, NULL),
(1118, '22113002', 'Wethnes rizky sabilla', '082269391445', 'Laki-Laki', '113', 1, 9, 'Terbata Bata', 'IMG-20221023-WA0032.jpg', 'lunas', 2, '22113002', 3, NULL, NULL, NULL, NULL),
(1119, '22315013', 'Rahmat Riyan Saputra', '0895609831439', 'Laki-Laki', '315', 1, 9, 'Terbata Bata', 'Screenshot_20221004_121535[1]_1.jpg', 'lunas', 2, '22315013', 3, NULL, NULL, NULL, NULL),
(1120, '22111045', 'Amelia Yudi Saputri', '082374711702', 'Perempuan', '111', 2, 9, 'Terbata Bata', 'IMG-20221023-WA0030.jpg', 'lunas', 2, '22111045', 3, NULL, NULL, NULL, NULL),
(1121, '22315026', 'M Farel Akbar', '089618555197', 'Laki-Laki', '315', 1, 9, 'Lancar', 'Screenshot_20221004_121535[2].jpg', NULL, 2, '22315026', 3, NULL, NULL, NULL, NULL),
(1122, '22114048', 'Ibnu fadillah ', '085366555988', 'Laki-Laki', '114', 2, 9, 'Terbata Bata', 'IMG-20221005-WA0044.jpg', 'lunas', 2, '22114048', 3, NULL, NULL, NULL, NULL),
(1123, '22411080', 'fatrian yahsya abdiguna', '082377803595', 'Laki-Laki', '411', 2, 9, 'Terbata Bata', 'IMG-20221023-WA0032_1.jpg', NULL, 2, '22411080', 3, NULL, NULL, NULL, NULL),
(1124, '22411035', 'M RIZKY KURNIAWAN', '089516118348', 'Laki-Laki', '411', 1, 9, 'Terbata Bata', '309312114_177704511457921_7983538004279907247_n_1.jpg', 'lunas', 2, '22411035', 3, NULL, NULL, NULL, NULL),
(1125, '22411102', 'Alvan Fahrizal ', '082269620042', 'Laki-Laki', '411', 1, 9, 'Lancar', 'Screenshot_2022-10-23-18-51-34-91_6012fa4d4ddec268fc5c7112cbb265e7.jpg', NULL, 2, '22411102', 3, NULL, NULL, NULL, NULL),
(1126, '22114058', 'Mahardandi Dwi Yanri ', '085769422137', 'Laki-Laki', '114', 2, 9, 'Terbata Bata', 'Screenshot_2022-10-08-19-28-03-93_99c04817c0de5652397fc8b56c3b3817.jpg', 'lunas', 2, '22114058', 3, NULL, NULL, NULL, NULL),
(1127, '22315019', 'Abriel Aidil Afwi', '085764657521', 'Laki-Laki', '315', 1, 1, 'Terbata Bata', 'Screenshot_2022-10-24-08-37-25-144_cn.wps.moffice_eng.jpg', 'lunas', 2, '22315019', 3, NULL, NULL, NULL, NULL),
(1128, '22411087', 'Muhammad Ridho Santosa', '089605968087', 'Laki-Laki', '411', 2, 9, 'Terbata Bata', 'Screenshot_2022_1024_085457.jpg', NULL, 2, '22411087', 3, NULL, NULL, NULL, NULL),
(1129, '22231004', 'Nila niswatun umami', '083146355234', 'Perempuan', '231', 1, 9, 'Terbata Bata', 'Screenshot_20221021-212129_WhatsApp.jpg', 'lunas', 2, '22231004', 3, NULL, NULL, NULL, NULL),
(1130, '22114056', 'Iqbal adi sukma', '081225722491', 'Laki-Laki', '114', 2, 9, 'Lancar', 'IMG_20221024_091808.jpg', NULL, 2, '22114056', 3, NULL, NULL, NULL, NULL),
(1131, '22114045', 'Nurwahid Hidayatullah', '089516198397', 'Laki-Laki', '114', 2, 9, 'Terbata Bata', 'IMG-20220925-WA0102.jpg', 'lunas', 2, '22114045', 3, NULL, NULL, NULL, NULL),
(1132, '22311045', 'Andika Prima Setia', '0895613300403', 'Laki-Laki', '311', 15, 9, 'Terbata Bata', '88B22DB3-E578-44F4-A7DE-F110704F1762.png', NULL, 2, '22311045', 3, NULL, NULL, NULL, NULL),
(1133, '22411046', 'M Dion Irawan', '0895340966078', 'Laki-Laki', '411', 1, 9, 'Terbata Bata', 'IMG-20220924-WA0011.jpg', NULL, 2, '22411046', 3, NULL, NULL, NULL, NULL),
(1134, '22316028', 'Octiansyah Ramadhan ', '085384810162', 'Laki-Laki', '316', 1, 9, 'Terbata Bata', 'Screenshot_2022-10-13-16-12-21-819_cn.wps.moffice_eng.jpg', 'lunas', 2, '22316028', 3, NULL, NULL, NULL, NULL),
(1135, '22411135', 'Bagus apriansyah ', '085609835605', 'Laki-Laki', '411', 3, 9, 'Terbata Bata', 'KELAS C (MNJ 22) 20221024_113007.jpg', NULL, 2, '22411135', 3, NULL, NULL, NULL, NULL),
(1136, '22114033', 'Muhammad celvin nugraha ', '082180669811', 'Laki-Laki', '114', 1, 9, 'Terbata Bata', 'IMG-20221005-WA0019.jpg', NULL, 2, '22114033', 3, NULL, NULL, NULL, NULL),
(1137, '22111018', 'Abelia Silvana Zulva ', '082186842573', 'Perempuan', '111', 2, 9, 'Lancar', 'IMG-20221024-WA0025.jpg', 'lunas', 2, '22111018', 3, NULL, NULL, NULL, NULL),
(1138, '22111019', 'Dwi Jihantari', '082184874064', 'Perempuan', '111', 2, 9, 'Terbata Bata', 'IMG_20221024_115845.jpg', 'lunas', 2, '22111019', 3, NULL, NULL, NULL, NULL),
(1139, '22411164', 'Imam Saputra ', '089632101896', 'Laki-Laki', '411', 3, 9, 'Terbata Bata', 'Screenshot_20221024-120110.jpg', NULL, 2, '22411164', 3, NULL, NULL, NULL, NULL),
(1140, '22315023', 'Sawal Dwi Noprianto ', '081809490158', 'Laki-Laki', '315', 1, 9, 'Terbata Bata', 'Screenshot_20221003_185203.jpg', 'lunas', 2, '22315023', 3, NULL, NULL, NULL, NULL),
(1141, '22411194', 'Jefta Regansyah', '082175171587', 'Laki-Laki', '411', 15, 9, 'Terbata Bata', 'Screenshot_20221024-142035_WhatsApp.jpg', NULL, 2, '22411194', 3, NULL, NULL, NULL, NULL),
(1143, '22114026', 'Usman Syarifuddin', '089562124583', 'Laki-Laki', '114', 2, 9, 'Terbata Bata', 'Screenshot_2022-10-24-15-53-26-501_com.whatsapp.jpg', 'lunas', 2, '22114026', 3, NULL, NULL, NULL, NULL),
(1144, '22311090', 'intan cahyanti ', '08117251335', 'Perempuan', '311', 3, 9, 'Terbata Bata', 'Screenshot_2022-10-24-16-30-51-47_439a3fec0400f8974d35eed09a31f914.jpg', NULL, 2, '22311090', 3, NULL, NULL, NULL, NULL),
(1145, '22411201', 'Andi wahyudi ', '082183861545', 'Laki-Laki', '411', 3, 9, 'Lancar', 'IMG-20220926-WA0012.jpg', 'lunas', 2, '22411201', 3, NULL, NULL, NULL, NULL),
(1146, '22111023', 'Adelia Putri ', '081297332997', 'Perempuan', '111', 2, 9, 'Terbata Bata', '4011c180-93b0-4e73-8332-6de27277e527_1.jpg', 'lunas', 2, '22111023', 3, NULL, NULL, NULL, NULL),
(1147, '22411159', 'Alvin Satria Hafiz', '085841246817', 'Laki-Laki', '411', 5, 9, 'Terbata Bata', 'B816421A-6324-486E-9A84-D3F0780135A5.jpeg', 'lunas', 2, '22411159', 3, NULL, NULL, NULL, NULL),
(1148, '22411076', 'KARINA RAMA DINI', '0887437019775', 'Perempuan', '411', 2, 9, 'Terbata Bata', 'IMG-20220926-WA0021.jpg', 'lunas', 2, '22411076', 3, NULL, NULL, NULL, NULL),
(1149, '22113009', 'Vivi Asista', '083168908284', 'Perempuan', '113', 1, 9, 'Tidak Bisa Membaca', '6809A2D1-F0FA-4EE4-A3E3-98C8D22EDC5D.jpeg', 'lunas', 2, '22113009', 3, NULL, NULL, NULL, NULL),
(1150, '22412020', 'Chika Febyola Samantha', '083168214842', 'Perempuan', '412', 1, 9, 'Terbata Bata', 'E3930773-126B-4811-8CAE-DEBFB606AED5.png', 'lunas', 2, '22412020', 3, NULL, NULL, NULL, NULL),
(1151, '22411074', 'Indah Putri Safina ', '08989248207', 'Perempuan', '411', 2, 9, 'Tidak Bisa Membaca', 'F478A678-E781-45A7-97F9-69C005D99EDB.jpeg', NULL, 2, '22411074', 3, NULL, NULL, NULL, NULL),
(1152, '22411010', 'Imelda Selviana', '089699482548', 'Perempuan', '411', 1, 9, 'Terbata Bata', '9F499309-E1EB-4339-9D9B-F1ACD040001E.jpeg', NULL, 2, '22411010', 3, NULL, NULL, NULL, NULL),
(1153, '22316021', 'Dimas Prabaswara', '083809751803', 'Laki-Laki', '316', 1, 9, 'Terbata Bata', 'BF21862F-E087-431B-8211-5426FD14DA8F.png', 'lunas', 2, '22316021', 3, NULL, NULL, NULL, NULL),
(1154, '22411127', 'Nurul Khotimah', '085658913103', 'Perempuan', '411', 2, 9, 'Lancar', 'Screenshot_2022-10-26-11-44-58-76_e2d5b3f32b79de1d45acd1fad96fbb0f.jpg', NULL, 2, '22411127', 3, NULL, NULL, NULL, NULL),
(1155, '22315004', 'Ikhsan Okta Saputra', '08984129820', 'Laki-Laki', '315', 1, 9, 'Terbata Bata', 'IMG-20221026-WA0008.jpg', NULL, 2, '22315004', 3, NULL, NULL, NULL, NULL),
(1156, '22411111', 'Wahdani ', '085892946585', 'Laki-Laki', '411', 2, 9, 'Lancar', 'Screenshot_2022-10-26-16-40-05-94_7352322957d4404136654ef4adb64504.jpg', 'lunas', 2, '22411111', 3, NULL, NULL, NULL, NULL),
(1157, '221120p5', 'Melda Aini Cahyani', '0895412106805', 'Perempuan', '112', 1, 9, 'Terbata Bata', 'Screenshot_20220923_172502.jpg', NULL, 2, '221120p5', 3, NULL, NULL, NULL, NULL),
(1158, '22411045', 'Sinta Permatasari ', '085819047681', 'Perempuan', '411', 1, 9, 'Lancar', 'IMG_20221007_165758.jpg', 'lunas', 2, '22411045', 3, NULL, NULL, NULL, NULL),
(1159, '2241166', 'Okriz Alfajri', '085382698262', 'Laki-Laki', '411', 2, 9, 'Terbata Bata', 'Screenshot_20220924-161242_Drive.jpg', 'lunas', 2, '2241166', 3, NULL, NULL, NULL, NULL),
(1160, '22411175', 'Salsabila', '081386555388', 'Perempuan', '411', 2, 9, 'Terbata Bata', '44C84B8E-5A9A-40FE-B359-83F1B0B78427.jpeg', 'lunas', 2, '22411175', 3, NULL, NULL, NULL, NULL),
(1161, '22311056', 'Arya Fauzan Adima ', '085758156452', 'Laki-Laki', '311', 15, 9, 'Terbata Bata', 'IMG-20221012-WA0017.jpg', 'lunas', 2, '22311056', 3, NULL, NULL, NULL, NULL),
(1162, '22411088', 'Ditha Sabrina ', '0895320454286', 'Perempuan', '411', 2, 9, 'Terbata Bata', 'IMG-20220926-WA0001.jpg', 'lunas', 2, '22411088', 3, NULL, NULL, NULL, NULL),
(1163, '22411145', 'Fatrian defrizal adi pratama', '082282533118', 'Laki-Laki', '411', 3, 9, 'Terbata Bata', '0AB4721F-4F55-4294-8DC4-191093A6C002.jpeg', NULL, 2, '22411145', 3, NULL, NULL, NULL, NULL),
(1164, '22316035', 'Brilyant Athaya Antarik ', '0895705021780', 'Laki-Laki', '316', 2, 9, 'Tidak Bisa Membaca', 'Screenshot_2022-10-13-16-52-52-563_cn.wps.moffice_eng.jpg', NULL, 2, '22316035', 3, NULL, NULL, NULL, NULL),
(1165, '22411181', 'Dera Sepira', '081340712353', 'Perempuan', '411', 3, 9, 'Tidak Bisa Membaca', 'IMG_20221028_221707.jpg', 'lunas', 2, '22411181', 3, NULL, NULL, NULL, NULL),
(1166, '22411180', 'Cindi Ayu Ningtias', '083184836200', 'Perempuan', '411', 3, 9, 'Lancar', 'IMG_20221028_221417_128.jpg', 'lunas', 2, '22411180', 3, NULL, NULL, NULL, NULL),
(1167, '22111048', 'Angelina Meirella ', '081379732960', 'Perempuan', '111', 2, 9, 'Lancar', 'C5D00C7E-EA56-485E-838D-412E6AF32BCC.jpeg', 'lunas', 2, '22111048', 3, NULL, NULL, NULL, NULL),
(1168, '22411085', 'Deska Hasan Pratama', '0895701262386', 'Laki-Laki', '411', 2, 9, 'Terbata Bata', 'Screenshot_20220926-174132_Drive.jpg', NULL, 2, '22411085', 3, NULL, NULL, NULL, NULL),
(1169, '22411138', 'ANANDA PUTRA ARIN PRATAMA', '085609935516', 'Laki-Laki', '411', 15, 9, 'Lancar', 'Screenshot_2022-10-27-16-29-47-465_com.whatsapp.jpg', NULL, 2, '22411138', 3, NULL, NULL, NULL, NULL),
(1170, '22111025', 'M Alvin Haryson', '082132323203', 'Laki-Laki', '111', 2, 9, 'Terbata Bata', '3ABF05F5-749A-4295-A309-3ACEFEA2F659.jpeg', 'lunas', 2, '22111025', 3, NULL, NULL, NULL, NULL),
(1171, '22411184', 'Haqqi anazilli qolbi ', '089602863369', 'Laki-Laki', '411', 2, 9, 'Terbata Bata', 'IMG_20221030_081049.jpg', 'lunas', 2, '22411184', 3, NULL, NULL, NULL, NULL),
(1172, '22112006', 'Nabila', '0895705120454', 'Perempuan', '112', 1, 9, 'Lancar', 'Screenshot_2022-10-30-08-54-41-89_c37d74246d9c81aa0bb824b57eaf7062.jpg', NULL, 2, '22112006', 3, NULL, NULL, NULL, NULL),
(1173, '22112004', 'Nanda Diona Mesca', '083126675814', 'Perempuan', '112', 1, 9, 'Lancar', 'IMG-20221030-WA0013.jpg', NULL, 2, '22112004', 3, NULL, NULL, NULL, NULL),
(1175, '22411177', 'Cipta Sukma Wardana', '088269592481', 'Laki-Laki', '411', 2, 9, 'Lancar', 'IMG-20220926-WA0084.jpg', NULL, 2, '22411177', 3, NULL, NULL, NULL, NULL),
(1176, '22411024', 'Bagus yohan irnando', '089652579108', 'Laki-Laki', '411', 1, 9, 'Terbata Bata', 'B763771E-6B8D-4224-BEDA-61ECD1034E32.jpeg', 'lunas', 2, '22411024', 3, NULL, NULL, NULL, NULL),
(1177, '22311073', 'Altarik Aziz', '085380613840', 'Laki-Laki', '311', 2, 9, 'Terbata Bata', '05A76248-6086-4B25-9AA4-099994EF8362.png', 'lunas', 2, '22311073', 3, NULL, NULL, NULL, NULL),
(1178, '22411125', 'Novia Eka putri', '081271544211', 'Perempuan', '411', 3, 9, 'Lancar', 'Screenshot_20221030-170200_WhatsApp.jpg', 'lunas', 2, '22411125', 3, NULL, NULL, NULL, NULL),
(1179, '22316034', 'Dywangga Yarealleo Difalco ', '089630619107', 'Laki-Laki', '316', 2, 9, 'Lancar', 'IMG_20221101_205943.jpg', NULL, 2, '22316034', 3, NULL, NULL, NULL, NULL),
(1181, '22114060', 'Agit pratama', '085841239736', 'Laki-Laki', '114', 2, 1, 'Terbata Bata', 'Screenshot_20221108_125241.jpg', NULL, 2, '22114060', 3, NULL, NULL, NULL, NULL),
(1182, '22311085', 'Salsabil muzzaki', '08995304072', 'Laki-Laki', '311', 2, 9, 'Terbata Bata', 'IMG-20221108-WA0045.jpg', 'lunas', 2, '22311085', 3, NULL, NULL, NULL, NULL),
(1183, '22411009', 'Natasya izatus zakia', '085768939162', 'Perempuan', '411', 1, 9, 'Terbata Bata', 'A8B758EF-33AE-44A6-B987-9AA9C89EE38C.jpeg', NULL, 2, '22411009', 3, NULL, NULL, NULL, NULL),
(1184, '22411013', 'CINDI PUTRI LESTARI ', '081540026948', 'Perempuan', '411', 1, 9, 'Terbata Bata', 'IMG_20221115_150902.jpg', NULL, 2, '22411013', 3, NULL, NULL, NULL, NULL),
(1185, '22411021', 'Nurcholis', '088973680462', 'Laki-Laki', '411', 1, 9, 'Terbata Bata', '786C0585-B39D-4E0B-88E1-48D72FFCDF48.jpeg', NULL, 2, '22411021', 3, NULL, NULL, NULL, NULL),
(1186, '22411104', 'Reinhart Vega Prawira ', '085832653120', 'Laki-Laki', '411', 2, 9, 'Terbata Bata', 'IMG_20221205_121053.jpg', NULL, 2, '22411104', 3, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_user` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `jk_user` varchar(12) COLLATE utf8mb4_general_ci NOT NULL,
  `no_wa` varchar(14) COLLATE utf8mb4_general_ci NOT NULL,
  `level` int DEFAULT '2',
  `keterangan_user` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_user`, `jk_user`, `no_wa`, `level`, `keterangan_user`) VALUES
(80, 'sekbir', 'administrator', 'yulis', 'Perempuan', '085832349377', 1, ''),
(81, 'kabir', 'kabir', 'bagus', 'Laki-Laki', '085266272440', 1, ''),
(82, 'benbir', 'benbir', 'novita', 'Perempuan', '082179706078', 1, ''),
(89, '18311005', 'Harussukses17', 'Andri Supriadi', 'Laki-Laki', '0895325027586', 2, '                        '),
(91, '20311099', '20311099', 'Vika Felika', 'Perempuan', '085785219107', 2, '                        '),
(94, '19231002', '19231002', 'Siti Nur Inayah', 'Perempuan', '082282297488', 2, '                        '),
(95, '19312216', '19312216', 'Dewi Fatmawati', 'Perempuan', '082280005821', 2, '                        '),
(96, '19111030', '19111030', 'Desti Fitriyani', 'Perempuan', '082278343282', 2, '                        '),
(97, '19316126', '19316126', 'Usman Puji Rahayu', 'Laki-Laki', '085664222324', 2, '                        '),
(98, '19312131', '19312131', 'Ichwan Solihin', 'Laki-Laki', '085766689697', 2, '                        '),
(100, '20311076', 'gurubagus', 'Bagus Sifak Udin R', 'Laki-Laki', '082180299423', 2, ''),
(101, '20312074', '082293963119', 'Sodikin', 'Laki-Laki', '082293963119', 2, '                        '),
(104, '20311103', '20311103', 'Yulistiani', 'Perempuan', '082184697197', 2, '                        '),
(105, '17113022', '17113022', 'Mega Lestari', 'Perempuan', '0895609900276', 2, '                        '),
(106, '17316096', '17316096', 'Meiwidia Seftiana', 'Perempuan', '085758901211', 2, '                        '),
(107, '14311632', '14311632', 'Titik Dwi Marini', 'Perempuan', '082282213889', 2, '                        '),
(108, '20111006', '20111006', 'Sekar Kinasih', 'Perempuan', '085758415059', 2, '                        '),
(109, '17111031', '17111031', 'Rani Fadhillah', 'Perempuan', '081279438358', 2, '                        '),
(110, '144111151', '144111151', 'Putri Intan ', 'Perempuan', '08316177448', 2, '                        '),
(111, '15111020', '15111020', 'Devi Yona', 'Perempuan', '088287388949', 2, '                        '),
(112, '19112010', '19112010', 'Yuli Santika', 'Perempuan', '081321088781', 2, '                        '),
(113, '16312200', '16312200', 'Mega Septiani', 'Perempuan', '085783730060', 2, '                        '),
(114, '15312530', '15312530', 'Ilyas David Sijabat', 'Laki-Laki', '085768199064', 2, '                        '),
(115, '17312296', 'Langkap123.', 'Firli Afrisa', 'Laki-Laki', '08976181749', 2, '                        '),
(116, '17316092', '17316092', 'Ghifar Javad Hamdi Aziz, S.T.', 'Laki-Laki', '082279236262', 2, '                        '),
(117, '17315078', '17315078', 'Tobby Dwicahyo, S.T.', 'Laki-Laki', '085159044231', 2, '                        '),
(118, '19411335', '19411335', 'Angga', 'Laki-Laki', '089632180938', 2, '                        '),
(119, '19114085', '19114085', 'Deden Syaifuloh', 'Laki-Laki', '083176234351', 2, '                        '),
(120, '14111150', '14111150', 'Ervin Sandika, S.S.', 'Laki-Laki', '085766698904', 2, '                        '),
(121, '17311321', '17311321', 'Niken Zulaika Fitria Khalik', 'Perempuan', '085768556063', 2, '                        '),
(122, '20312055', 'Tekaje4X3028', 'Aldo Fernanda', 'Laki-Laki', '085380887938', 2, '                        '),
(123, '17311079', '17311079', 'Rendi Chafidz', 'Laki-Laki', '081273858497', 2, '                        '),
(125, '20312054', '20312054', 'Aldo Febrian', 'Laki-Laki', '085379156263', 2, '                        '),
(126, '20316042', '20316042', 'M. Taufik Adha Pratama', 'Laki-Laki', '089624319349', 2, '                        ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_copy`
--

CREATE TABLE `user_copy` (
  `id_user` int NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `no_wa` varchar(14) COLLATE utf8mb4_general_ci NOT NULL,
  `level` int DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_detailkbm`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_detailkbm` (
`npm_peserta` varchar(10)
,`nama_peserta` varchar(50)
,`makhroj` varchar(10)
,`tajwid` varchar(10)
,`pilgan` varchar(10)
,`ket` text
,`kelancaran_mengaji` varchar(30)
,`id_jurusan` char(4)
,`kode_jurusan` varchar(10)
,`nama_jurusan` varchar(30)
,`nama_dosen` varchar(50)
,`kelas` varchar(6)
,`jk` varchar(13)
,`nomor_wa` varchar(14)
,`gelombang` int
,`dosen_id` int
,`gel_jadwal` int
,`jadwal_id` int
,`id_kelompok` int
,`hari` varchar(10)
,`jam` char(6)
,`nama_user` varchar(50)
,`jk_user` varchar(12)
,`p1` varchar(10)
,`p2` varchar(10)
,`p3` varchar(10)
,`p4` varchar(10)
,`p5` varchar(10)
,`p6` varchar(10)
,`p7` varchar(10)
,`p8` varchar(10)
,`p9` varchar(10)
,`p10` varchar(10)
,`p11` varchar(10)
,`p12` varchar(10)
,`kehadiran` float
,`mutabaah` float
,`uts` float
,`kegiatan_wajib` float
,`wudhu` float
,`sholat` float
,`tilawah` float
,`uas_tertulis` float
,`hasil_akhir` double
,`nm` varchar(1)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `waktu`
--

CREATE TABLE `waktu` (
  `id_waktu` int NOT NULL,
  `hari` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jam` char(6) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `waktu`
--

INSERT INTO `waktu` (`id_waktu`, `hari`, `jam`) VALUES
(4, 'Senin', '07.00\r'),
(5, 'Senin', '09.00\r'),
(6, 'Senin', '11.00\r'),
(7, 'Senin', '13.00\r'),
(8, 'Senin', '15.00\r'),
(9, 'Senin', '17.00\r'),
(10, 'Selasa', '07.00\r'),
(11, 'Selasa', '09.00\r'),
(12, 'Selasa', '11.00\r'),
(13, 'Selasa', '13.00\r'),
(14, 'Selasa', '15.00\r'),
(15, 'Selasa', '17.00\r'),
(16, 'Rabu', '07.00\r'),
(17, 'Rabu', '09.00\r'),
(18, 'Rabu', '11.00\r'),
(19, 'Rabu', '13.00\r'),
(20, 'Rabu', '15.00\r'),
(21, 'Rabu', '17.00\r'),
(22, 'Kamis', '07.00\r'),
(23, 'Kamis', '09.00\r'),
(24, 'Kamis', '11.00\r'),
(25, 'Kamis', '13.00\r'),
(26, 'Kamis', '15.00\r'),
(27, 'Kamis', '17.00\r'),
(28, 'Jumat', '07.00\r'),
(29, 'Jumat', '09.00\r'),
(30, 'Jumat', '11.00\r'),
(31, 'Jumat', '13.00\r'),
(32, 'Jumat', '15.00\r'),
(33, 'Jumat', '17.00\r'),
(34, 'Sabtu', '07.00\r'),
(35, 'Sabtu', '09.00\r'),
(36, 'Sabtu', '11.00\r'),
(37, 'Sabtu', '13.00\r'),
(38, 'Sabtu', '15.00\r'),
(39, 'Sabtu', '17.00\r'),
(40, 'Senin', '19.00'),
(41, 'Selasa', '19.00'),
(42, 'Rabu', '19.00'),
(43, 'Kamis', '19.00'),
(44, 'Jumat', '19.00'),
(45, 'Sabtu', '19.00');

-- --------------------------------------------------------

--
-- Struktur untuk view `v_detailkbm`
--
DROP TABLE IF EXISTS `v_detailkbm`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_detailkbm`  AS SELECT `p`.`npm_peserta` AS `npm_peserta`, `p`.`nama_peserta` AS `nama_peserta`, `p`.`makhroj` AS `makhroj`, `p`.`tajwid` AS `tajwid`, `p`.`pilgan` AS `pilgan`, `p`.`ket` AS `ket`, `p`.`kelancaran_mengaji` AS `kelancaran_mengaji`, `jur`.`id_jurusan` AS `id_jurusan`, `jur`.`kode_jurusan` AS `kode_jurusan`, `jur`.`nama_jurusan` AS `nama_jurusan`, `d`.`nama_dosen` AS `nama_dosen`, `kls`.`kelas` AS `kelas`, `p`.`jk` AS `jk`, `p`.`nomor_wa` AS `nomor_wa`, `p`.`gelombang` AS `gelombang`, `p`.`dosen_id` AS `dosen_id`, `j`.`gel_jadwal` AS `gel_jadwal`, `k`.`jadwal_id` AS `jadwal_id`, `k`.`id_kelompok` AS `id_kelompok`, `w`.`hari` AS `hari`, `w`.`jam` AS `jam`, `t`.`nama_user` AS `nama_user`, `t`.`jk_user` AS `jk_user`, `k`.`p1` AS `p1`, `k`.`p2` AS `p2`, `k`.`p3` AS `p3`, `k`.`p4` AS `p4`, `k`.`p5` AS `p5`, `k`.`p6` AS `p6`, `k`.`p7` AS `p7`, `k`.`p8` AS `p8`, `k`.`p9` AS `p9`, `k`.`p10` AS `p10`, `k`.`p11` AS `p11`, `k`.`p12` AS `p12`, `k`.`kehadiran` AS `kehadiran`, `k`.`mutabaah` AS `mutabaah`, `k`.`uts` AS `uts`, `k`.`kegiatan_wajib` AS `kegiatan_wajib`, `k`.`wudhu` AS `wudhu`, `k`.`sholat` AS `sholat`, `k`.`tilawah` AS `tilawah`, `k`.`uas_tertulis` AS `uas_tertulis`, ((((((((`k`.`kehadiran` * 0.15) + (`k`.`mutabaah` * 0.15)) + (`k`.`uts` * 0.1)) + (`k`.`kegiatan_wajib` * 0.1)) + (`k`.`wudhu` * 0.1)) + (`k`.`sholat` * 0.1)) + (`k`.`tilawah` * 0.15)) + (`k`.`uas_tertulis` * 0.15)) AS `hasil_akhir`, if((((((((((`k`.`kehadiran` * 0.15) + (`k`.`mutabaah` * 0.15)) + (`k`.`uts` * 0.1)) + (`k`.`kegiatan_wajib` * 0.1)) + (`k`.`wudhu` * 0.1)) + (`k`.`sholat` * 0.1)) + (`k`.`tilawah` * 0.15)) + (`k`.`uas_tertulis` * 0.15)) > 90),'A',if((((((((((`k`.`kehadiran` * 0.15) + (`k`.`mutabaah` * 0.15)) + (`k`.`uts` * 0.1)) + (`k`.`kegiatan_wajib` * 0.1)) + (`k`.`wudhu` * 0.1)) + (`k`.`sholat` * 0.1)) + (`k`.`tilawah` * 0.15)) + (`k`.`uas_tertulis` * 0.15)) > 80),'B',if((((((((((`k`.`kehadiran` * 0.15) + (`k`.`mutabaah` * 0.15)) + (`k`.`uts` * 0.1)) + (`k`.`kegiatan_wajib` * 0.1)) + (`k`.`wudhu` * 0.1)) + (`k`.`sholat` * 0.1)) + (`k`.`tilawah` * 0.15)) + (`k`.`uas_tertulis` * 0.15)) > 80),'C',if((((((((((`k`.`kehadiran` * 0.15) + (`k`.`mutabaah` * 0.15)) + (`k`.`uts` * 0.1)) + (`k`.`kegiatan_wajib` * 0.1)) + (`k`.`wudhu` * 0.1)) + (`k`.`sholat` * 0.1)) + (`k`.`tilawah` * 0.15)) + (`k`.`uas_tertulis` * 0.15)) > 80),'D','E')))) AS `nm` FROM (((((((`peserta` `p` left join `dosen` `d` on((`p`.`dosen_id` = `d`.`id_dosen`))) left join `kelas` `kls` on((`p`.`id_kelas` = `kls`.`id_kelas`))) left join `jurusan` `jur` on((`p`.`id_jurusan` = `jur`.`id_jurusan`))) left join `kelompok_kbm` `k` on((`p`.`id_peserta` = `k`.`peserta_id`))) left join `jadwal_tutor` `j` on((`k`.`jadwal_id` = `j`.`id_jadwal`))) left join `waktu` `w` on((`j`.`waktu_id` = `w`.`id_waktu`))) left join `user` `t` on((`t`.`id_user` = `j`.`id_tutor`)))  ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indeks untuk tabel `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id_info`);

--
-- Indeks untuk tabel `jadwal_tutor`
--
ALTER TABLE `jadwal_tutor`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_waktu` (`waktu_id`),
  ADD KEY `id_tutor` (`id_tutor`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indeks untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD UNIQUE KEY `kelas` (`kelas`);

--
-- Indeks untuk tabel `kelompok_kbm`
--
ALTER TABLE `kelompok_kbm`
  ADD PRIMARY KEY (`id_kelompok`),
  ADD UNIQUE KEY `id_peserta` (`peserta_id`),
  ADD KEY `id_jadwal` (`jadwal_id`);

--
-- Indeks untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_laporan`),
  ADD KEY `jadwal_tutor` (`id_jadwal_tutor`);

--
-- Indeks untuk tabel `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id_peserta`),
  ADD UNIQUE KEY `npm_peserta` (`npm_peserta`),
  ADD KEY `peserta_fk0` (`id_jurusan`),
  ADD KEY `peserta_fk1` (`id_kelas`),
  ADD KEY `dosen_id` (`dosen_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `kode_tutor` (`username`);

--
-- Indeks untuk tabel `user_copy`
--
ALTER TABLE `user_copy`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `kode_tutor` (`username`);

--
-- Indeks untuk tabel `waktu`
--
ALTER TABLE `waktu`
  ADD PRIMARY KEY (`id_waktu`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `info`
--
ALTER TABLE `info`
  MODIFY `id_info` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `jadwal_tutor`
--
ALTER TABLE `jadwal_tutor`
  MODIFY `id_jadwal` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id_kegiatan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `kelompok_kbm`
--
ALTER TABLE `kelompok_kbm`
  MODIFY `id_kelompok` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1732;

--
-- AUTO_INCREMENT untuk tabel `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_laporan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id_peserta` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1187;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT untuk tabel `user_copy`
--
ALTER TABLE `user_copy`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `waktu`
--
ALTER TABLE `waktu`
  MODIFY `id_waktu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jadwal_tutor`
--
ALTER TABLE `jadwal_tutor`
  ADD CONSTRAINT `jadwal_tutor_ibfk_1` FOREIGN KEY (`id_tutor`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwal_tutor_ibfk_2` FOREIGN KEY (`waktu_id`) REFERENCES `waktu` (`id_waktu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kelompok_kbm`
--
ALTER TABLE `kelompok_kbm`
  ADD CONSTRAINT `kelompok_kbm_ibfk_1` FOREIGN KEY (`peserta_id`) REFERENCES `peserta` (`id_peserta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kelompok_kbm_ibfk_2` FOREIGN KEY (`jadwal_id`) REFERENCES `jadwal_tutor` (`id_jadwal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD CONSTRAINT `laporan_ibfk_1` FOREIGN KEY (`id_jadwal_tutor`) REFERENCES `jadwal_tutor` (`id_jadwal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `peserta`
--
ALTER TABLE `peserta`
  ADD CONSTRAINT `peserta_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `peserta_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `peserta_ibfk_3` FOREIGN KEY (`dosen_id`) REFERENCES `dosen` (`id_dosen`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
