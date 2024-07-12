-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 11, 2024 at 09:00 AM
-- Server version: 8.0.30
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbq_backup`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int NOT NULL,
  `nama_dosen` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id_info` int NOT NULL,
  `gelombang` int DEFAULT NULL,
  `tahun_ajar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `masa_daftar` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status_pendaftaran` int DEFAULT '1',
  `biaya` int DEFAULT NULL,
  `wa_konfirmasi` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mulai_kbm` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `launching` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mabit` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jalasah` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `talkshow` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cp1` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_cp1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cp2` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_cp2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pamflet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id_info`, `gelombang`, `tahun_ajar`, `masa_daftar`, `status_pendaftaran`, `biaya`, `wa_konfirmasi`, `mulai_kbm`, `launching`, `mabit`, `jalasah`, `talkshow`, `cp1`, `nama_cp1`, `cp2`, `nama_cp2`, `pamflet`, `deskripsi`) VALUES
(1, 1, '2024/2025', '01 - 08 Oktober 2024', 1, 60, '82179706078', '2022-10-10', '2022-10-23', '2022-11-06', '2022-11-06', '2023-01-30', '85266272440', 'Bagus ', '82184697197', 'Yulistiani', 'arrahmanteknokrat_310953354_512778924002707_320370919775952814_n.jfif', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_tutor`
--

CREATE TABLE `jadwal_tutor` (
  `id_jadwal` int NOT NULL,
  `id_tutor` int NOT NULL,
  `waktu_id` int NOT NULL,
  `gel_jadwal` int DEFAULT NULL,
  `tahun_ajar_jadwal` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kode_jurusan` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_jurusan` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jurusan`
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
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_kegiatan` int NOT NULL,
  `nama_kegiatan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `foto_kegiatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`id_kegiatan`, `nama_kegiatan`, `deskripsi`, `foto_kegiatan`) VALUES
(9, 'Launching BBQ', 'Pembukaan BBQ merupakan kegiatan rutin yang diadakan  setiap tahunnya. Pelaksanaan acara bertujuan untuk meningkatkan kecintaan mahasiswa muslim terhadap Islam sekaligus mengamalkannya dalam berbagai aspek kehidupan berbangsa dan bernegara. Selain itu juga untuk memotivasi para mahasiswa muslim mempelajari dan memperbaiki bacaan Al-Qur’an.', '6885bd5a-b9b8-4d00-80f0-b3476c483b5f.jfif'),
(11, 'Mabit', 'Malam Bina Taqwa  merupakan salah satu sarana tarbiyah untuk melembutkan hati, membina ruhiyah, membersihkan jiwa dan juga membiasakan fisik untuk beribadah. Beribadah yang dimaksud di sini adalah shalat tahajud, dzikir, tafakkur dan tadabbur.', 'mabit_4.png'),
(12, 'Jalasah', 'Jalasah Ruhiah merupakan kegiatan yang memiliki momentum yang tepat dalam membentuk pribadi-pribadi yang berakhlakul karimah sesuai dengan ajaran Nabi Muhammad SAW. Kegiatan jalasah ruhiah ini diharapkan dapat memberikan secercah pengaruh positif bagi perkembangan kualitas serta kuantitas belajar dalam mewujudkan tujuan dan cita-cita', 'jalasah_1.jfif'),
(13, 'Save Development Program', 'Kegiatan penutup KBM BBQ sekaligus memotivasi para mahasiswa agar terus  melanjutkan dengan mengikuti  belajar Al-Qur\'an. Kiranya melalui BBQ penutupan SDP ini, mahasiswa semakin dikuatkan untuk terus melanjutkan dan bisa mengamalkan Al-Qur\'an dalam kehidupan sehari-hari.', '13a29c2f-dda9-4014-b065-13395d2ff663.jfif'),
(14, 'Gebyar Ramadhan', 'Gebyar Ramadhan adalah sebuah kegiatan dalam rangka menyemarakkan bulan Suci Ramadhan. Gebyar ramadhan diramaikan dengan berbagai kegiatan lomba yang ada didalamnya, yang diikuti oleh praktikkan BBQ dan juga mahasiswa Universitas Teknokrat Indonesia', 'gs.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int NOT NULL,
  `kelas` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kelas`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'Dx'),
(6, 'E'),
(7, 'Ex'),
(8, 'F'),
(9, 'Fx'),
(10, 'G'),
(11, 'GAB 1'),
(12, 'GAB 2'),
(13, 'GAB 3'),
(14, 'H'),
(15, 'Hx'),
(16, 'X1'),
(17, 'X2'),
(18, 'X3');

-- --------------------------------------------------------

--
-- Table structure for table `kelompok_kbm`
--

CREATE TABLE `kelompok_kbm` (
  `id_kelompok` int NOT NULL,
  `jadwal_id` int NOT NULL,
  `peserta_id` int NOT NULL,
  `p1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p3` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p4` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p7` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p8` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p9` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p10` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p11` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p12` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kehadiran` float DEFAULT NULL,
  `mutabaah` float DEFAULT NULL,
  `uts` float DEFAULT NULL,
  `kegiatan_wajib` float DEFAULT NULL,
  `wudhu` float DEFAULT NULL,
  `sholat` float DEFAULT NULL,
  `tilawah` float DEFAULT NULL,
  `uas_tertulis` float DEFAULT NULL,
  `pembuat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `absen_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
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
  `materi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `keterangan_laporan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `foto_laporan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `id_peserta` int NOT NULL,
  `npm_peserta` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama_peserta` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nomor_wa` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jk` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_jurusan` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_kelas` int DEFAULT NULL,
  `dosen_id` int DEFAULT NULL,
  `kelancaran_mengaji` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jadwal_kuliah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tahun_ajar` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gelombang` int DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '123',
  `level` int DEFAULT '3',
  `pilgan` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `makhroj` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tajwid` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ket` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_user` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jk_user` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `no_wa` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `level` int DEFAULT '2',
  `keterangan_user` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_user`, `jk_user`, `no_wa`, `level`, `keterangan_user`) VALUES
(1, 'admin', 'admin321', 'Administrator', 'Laki-Laki', '085765842510', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `waktu`
--

CREATE TABLE `waktu` (
  `id_waktu` int NOT NULL,
  `hari` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jam` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `waktu`
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id_info`);

--
-- Indexes for table `jadwal_tutor`
--
ALTER TABLE `jadwal_tutor`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_waktu` (`waktu_id`),
  ADD KEY `id_tutor` (`id_tutor`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD UNIQUE KEY `kelas` (`kelas`);

--
-- Indexes for table `kelompok_kbm`
--
ALTER TABLE `kelompok_kbm`
  ADD PRIMARY KEY (`id_kelompok`),
  ADD UNIQUE KEY `id_peserta` (`peserta_id`),
  ADD KEY `id_jadwal` (`jadwal_id`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_laporan`),
  ADD KEY `jadwal_tutor` (`id_jadwal_tutor`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id_peserta`),
  ADD UNIQUE KEY `npm_peserta` (`npm_peserta`),
  ADD KEY `peserta_fk0` (`id_jurusan`),
  ADD KEY `peserta_fk1` (`id_kelas`),
  ADD KEY `dosen_id` (`dosen_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `kode_tutor` (`username`);

--
-- Indexes for table `waktu`
--
ALTER TABLE `waktu`
  ADD PRIMARY KEY (`id_waktu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id_info` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jadwal_tutor`
--
ALTER TABLE `jadwal_tutor`
  MODIFY `id_jadwal` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id_kegiatan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `kelompok_kbm`
--
ALTER TABLE `kelompok_kbm`
  MODIFY `id_kelompok` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_laporan` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id_peserta` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `waktu`
--
ALTER TABLE `waktu`
  MODIFY `id_waktu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwal_tutor`
--
ALTER TABLE `jadwal_tutor`
  ADD CONSTRAINT `jadwal_tutor_ibfk_1` FOREIGN KEY (`id_tutor`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwal_tutor_ibfk_2` FOREIGN KEY (`waktu_id`) REFERENCES `waktu` (`id_waktu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kelompok_kbm`
--
ALTER TABLE `kelompok_kbm`
  ADD CONSTRAINT `kelompok_kbm_ibfk_1` FOREIGN KEY (`peserta_id`) REFERENCES `peserta` (`id_peserta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kelompok_kbm_ibfk_2` FOREIGN KEY (`jadwal_id`) REFERENCES `jadwal_tutor` (`id_jadwal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `laporan`
--
ALTER TABLE `laporan`
  ADD CONSTRAINT `laporan_ibfk_1` FOREIGN KEY (`id_jadwal_tutor`) REFERENCES `jadwal_tutor` (`id_jadwal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `peserta`
--
ALTER TABLE `peserta`
  ADD CONSTRAINT `peserta_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `peserta_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `peserta_ibfk_3` FOREIGN KEY (`dosen_id`) REFERENCES `dosen` (`id_dosen`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
