-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 02, 2011 at 12:50 
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `cleaning_service`
--

CREATE TABLE IF NOT EXISTS `cleaning_service` (
  `kode_clean_serv` int(11) NOT NULL,
  `kode_ruangan` int(11) NOT NULL,
  `nama_clean_serv` varchar(15) NOT NULL,
  `alamat_clean_serv` varchar(20) NOT NULL,
  `no_tlp` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`kode_clean_serv`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cleaning_service`
--

INSERT INTO `cleaning_service` (`kode_clean_serv`, `kode_ruangan`, `nama_clean_serv`, `alamat_clean_serv`, `no_tlp`) VALUES
(11, 1011, 'Boy', 'Surabaya', '03419665656'),
(12, 1012, 'Hendra', 'Malang', '081121228123'),
(13, 1013, 'Putri', 'Sampang', '085731221222'),
(14, 1014, 'Egi', 'Pamekasan', '0324322452'),
(15, 1015, 'Amelia', 'Lamongan', '089341050343'),
(16, 1016, 'Shandy', 'Pamekasan', '085732119891'),
(17, 1017, 'Andira', 'Lamongan', '087123452376'),
(18, 1018, 'Sulaiha', 'Surabaya', '085732565943'),
(19, 1019, 'Andi', 'Malang', '087671778976'),
(20, 1012, 'Sutrisno', 'Surabaya', '087870998765'),
(21, 1022, 'Sofia', 'panglegur', '081987876655');

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE IF NOT EXISTS `dokter` (
  `kode_dokter` int(11) NOT NULL,
  `nama_dokter` varchar(25) NOT NULL,
  `spesialis` varchar(25) NOT NULL,
  `alamat_dokter` varchar(25) NOT NULL,
  `no_tlp` varchar(25) NOT NULL,
  PRIMARY KEY (`kode_dokter`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`kode_dokter`, `nama_dokter`, `spesialis`, `alamat_dokter`, `no_tlp`) VALUES
(10008, 'Dr. Misbahol Arifin', 'Ahli Bedah', 'Surabaya', '034176540023'),
(10006, 'Dr. Didin Yustisianto', 'Penyakit Dalam', 'Lamongan', '085767345900'),
(10005, 'Dr. Joko Saputro', 'Ahli Syaraf', 'Gresik', '081232113451'),
(10003, 'Dr. Wahyu Alam', 'Ahli Bedah', 'Surabaya', '034178889210'),
(10002, 'Dr. Budi Santoso', 'Umum', 'Kediri', '089342103082'),
(10007, 'Dr. Arini Wulandari', 'Umum', 'Gresik', '0819892341212'),
(10004, 'Dr. Aini Suliwati', 'Ahli Kandungan', 'Malang', '08578765452'),
(10001, 'Dr. Septya Ningrum', 'Jantung', 'Surabaya', '081345645821'),
(10009, 'Dr.  Julia Agustin', 'Penyakit Dalam', 'Gresik', '034178898989'),
(10010, 'Dr. Aris Eko', 'Ahli Syaraf', 'Malang', '085731233112');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_jaga`
--

CREATE TABLE IF NOT EXISTS `jadwal_jaga` (
  `kode_jaga` int(11) NOT NULL,
  `kode_dokter` int(11) NOT NULL,
  `kode_suster` int(11) NOT NULL,
  `kode_receptionist` int(11) NOT NULL,
  `waktu_jaga` varchar(25) NOT NULL,
  PRIMARY KEY (`kode_jaga`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal_jaga`
--

INSERT INTO `jadwal_jaga` (`kode_jaga`, `kode_dokter`, `kode_suster`, `kode_receptionist`, `waktu_jaga`) VALUES
(29, 10009, 1009, 109, 'Jumat'),
(28, 10008, 1008, 108, 'Kamis Malam'),
(27, 10007, 1007, 107, 'Kamis Pagi'),
(26, 10006, 1006, 106, 'Rabu Malam'),
(25, 10005, 1005, 105, 'Rabu Pagi'),
(24, 10004, 1004, 104, 'Selasa Malam'),
(23, 10003, 1003, 103, 'Selasa Pagi'),
(21, 10001, 1001, 101, 'Senin Pagi'),
(22, 10002, 1002, 102, 'Senin Malam'),
(30, 10010, 1010, 110, 'Sabtu');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE IF NOT EXISTS `pasien` (
  `kode_pasien` int(11) NOT NULL,
  `nama_pasien` varchar(50) NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tempat_lahir` varchar(15) DEFAULT NULL,
  `jenis_kelamin` char(10) NOT NULL,
  `alamat_pasien` varchar(15) NOT NULL,
  `usia` int(10) DEFAULT NULL,
  `penyakit_diderita` varchar(25) NOT NULL,
  PRIMARY KEY (`kode_pasien`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`kode_pasien`, `nama_pasien`, `tanggal_lahir`, `tempat_lahir`, `jenis_kelamin`, `alamat_pasien`, `usia`, `penyakit_diderita`) VALUES
(1, 'Arum Nuvarega', '1996-03-11', 'Surabaya', 'Perempuan', 'Sampang', 15, 'Kecelakaan'),
(2, 'Ahmad Alamsyah', '1987-04-23', 'Sumenep', 'Laki-laki', 'Sumenep', 24, 'Patah Tulang'),
(3, 'Atikah', '1987-11-11', 'Pamekasan', 'Perempuan', 'Waru', 24, 'Melahirkan'),
(4, 'Anita Wulandari', '1989-12-23', 'Sampang', 'Perempuan', 'Sampang', 22, 'Melahirkan'),
(5, 'Doni Alambara', '2001-11-10', 'Pamekasan', 'Laki-laki', 'Bulay', 20, 'Demam Berdarah'),
(6, 'Hj. Zulaiha', '1977-01-25', 'Pamekasan', 'Perempuan', 'Pademawu', 34, 'Jantung'),
(7, 'Muhlis', '1988-09-15', 'Sumenep', 'Laki-laki', 'Kalianget', 20, 'Tipes'),
(8, 'Eka Fatimah', '2003-11-06', 'Sampang', 'Perempuan', 'Torjun', 8, 'Tipes'),
(9, 'Eko Rahman', '1980-10-12', 'Bandung', 'Laki-laki', 'Galis', 31, 'Patah Tulang'),
(10, 'Arif Setiawan', '1970-11-28', 'Sampang', 'Laki-laki', 'Telang', 20, 'Gagal Ginjal'),
(11, 'Duta Armada', '1990-04-19', 'Bangkalan', 'Laki-laki', 'Kamal Permai', 21, 'Batu Ginjal'),
(12, 'Ida Lidya', '1991-02-06', 'Pamekasan', 'Perempuan', 'Pamekasan', 20, 'Malaria');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE IF NOT EXISTS `pembayaran` (
  `kode_pembayaran` int(11) NOT NULL,
  `kode_receptionist` int(5) NOT NULL,
  `kode_inap` int(11) NOT NULL,
  `lama_rawat` varchar(15) NOT NULL,
  `jmlh_pembayaran` varchar(20) NOT NULL,
  PRIMARY KEY (`kode_pembayaran`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`kode_pembayaran`, `kode_receptionist`, `kode_inap`, `lama_rawat`, `jmlh_pembayaran`) VALUES
(9, 101, 1119, '12', 'Rp 5.000.000,-'),
(8, 102, 1118, '10', 'Rp 4.000.000,-'),
(7, 103, 1117, '7', 'Rp 3.500.000,-'),
(6, 104, 1116, '10', 'Rp 5.800.000,-'),
(5, 105, 1115, '14', 'Rp 6.000.000,-'),
(4, 106, 1114, '10', 'Rp 2.800.000,-'),
(3, 107, 1113, '12', 'Rp 6.800.000,-'),
(2, 108, 1112, '14', 'Rp 5.000.000'),
(1, 109, 1111, '7', 'Rp 3.800.000,-'),
(10, 110, 1120, '11', 'Rp 4.800.000,-'),
(11, 110, 1123, '4', 'Rp 3.000.000'),
(12, 109, 1124, '11', 'Rp.2.500.000');

-- --------------------------------------------------------

--
-- Table structure for table `rawat_inap`
--

CREATE TABLE IF NOT EXISTS `rawat_inap` (
  `kode_inap` int(11) NOT NULL AUTO_INCREMENT,
  `kode_pasien` int(11) NOT NULL,
  `kode_dokter` int(11) NOT NULL,
  `kode_ruangan` int(11) NOT NULL,
  PRIMARY KEY (`kode_inap`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1127 ;

--
-- Dumping data for table `rawat_inap`
--

INSERT INTO `rawat_inap` (`kode_inap`, `kode_pasien`, `kode_dokter`, `kode_ruangan`) VALUES
(1111, 1, 10001, 1011),
(1112, 2, 10002, 1012),
(1113, 3, 10003, 1013),
(1114, 4, 10004, 1014),
(1115, 5, 10005, 1015),
(1116, 6, 10006, 1016),
(1117, 7, 10007, 1017),
(1118, 8, 10008, 1018),
(1119, 9, 10009, 1019),
(1120, 10, 10010, 1020),
(1123, 11, 10002, 1021),
(1124, 12, 10002, 1022),
(1126, 13, 10001, 1023);

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE IF NOT EXISTS `receptionist` (
  `kode_receptionist` int(11) NOT NULL,
  `nama_receptionist` varchar(15) NOT NULL,
  `password` varchar(32) NOT NULL,
  `alamat_receptionist` varchar(20) NOT NULL,
  `no_tlp` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`kode_receptionist`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`kode_receptionist`, `nama_receptionist`, `password`, `alamat_receptionist`, `no_tlp`) VALUES
(101, 'Rina', '3aea9516d222934e35dd30f142fda18c', 'Surabaya', '03417665656'),
(102, 'Santi', 'ae1d4b431ead52e5ee1788010e8ec110', 'Malang', '081121223123'),
(103, 'Halimatus', '94f74487bcc4fe21d95a7c677a2c619c', 'Sampang', '085731222222'),
(104, 'Widyawati', '77abb0b805bf8858340f7571943f5bda', 'Pamekasan', '0324324452'),
(105, 'Rahma', 'b007b7d6520a7b3dcccd2a1ec2891009', 'Lamongan', '089341090343'),
(106, 'Ningtyas', '96b6a29c0a6167b46e87c630c350ccc1', 'Pamekasan', '085732219891'),
(107, 'Hanim', '22955b84f285d694c09154d1ad8e747a', 'Lamongan', '087123412376'),
(108, 'Rahmawati', 'dc0271053c027f3ac28884a17ac1f939', 'Surabaya', '085732565543'),
(109, 'Zahira', '2fea6e7dff88bfad359ecbb3b1d7bae0', 'Malang', '087676778976'),
(110, 'Amira', '0ae39049910b110bea964228da2c9faa', 'Surabaya', '03417778799');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE IF NOT EXISTS `ruangan` (
  `kode_ruangan` int(11) NOT NULL,
  `kode_pasien` int(11) NOT NULL,
  `nama_ruangan` varchar(15) NOT NULL,
  `jenis_ruangan` varchar(15) NOT NULL,
  `no_ranjang` varchar(15) NOT NULL,
  PRIMARY KEY (`kode_ruangan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`kode_ruangan`, `kode_pasien`, `nama_ruangan`, `jenis_ruangan`, `no_ranjang`) VALUES
(1011, 1, 'Kelas 1', 'Umum', '40'),
(1012, 2, 'Kelas 1', 'Umum', '41'),
(1013, 3, 'Kelas VIP', 'Kandungan', '43'),
(1014, 4, 'Kelas 2', 'Kandungan', '44'),
(1015, 5, 'Kelas 3', 'Anak-anak', '45'),
(1016, 6, 'Kelas VIP', 'Penyakit Dalam', '46'),
(1017, 7, 'Kelas 4', 'Umum', '47'),
(1018, 8, 'Kelas VIP', 'Anak-anak', '48'),
(1019, 9, 'Kelas 4', 'Umum', '49'),
(1020, 10, 'Kelas 5', 'Penyakit Dalam', '50'),
(1021, 11, 'Kelas 6', 'Penyakit Dalam', '34'),
(1022, 12, 'Kelas 7', 'Umum', '2');

-- --------------------------------------------------------

--
-- Table structure for table `suster`
--

CREATE TABLE IF NOT EXISTS `suster` (
  `kode_suster` int(11) NOT NULL,
  `kode_dokter` int(11) NOT NULL,
  `nama_suster` varchar(15) NOT NULL,
  `alamat_suster` varchar(20) NOT NULL,
  `no_tlp` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`kode_suster`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suster`
--

INSERT INTO `suster` (`kode_suster`, `kode_dokter`, `nama_suster`, `alamat_suster`, `no_tlp`) VALUES
(1001, 10001, 'Sabrina', 'Surabaya', '034176222110'),
(1002, 10002, 'Aulia Margareth', 'Malang', '081232202233'),
(1003, 10003, 'Ratih', 'Sampang', '085731222001'),
(1004, 10004, 'Suliswati', 'Pamekasan', '0324324451'),
(1005, 10005, 'Ratna Galih', 'Lamongan', '089341090912'),
(1006, 10006, 'Ayu Ningtyas', 'Pamekasan', '085732119891'),
(1007, 10007, 'Halimah', 'Lamongan', '087123412312'),
(1008, 10008, 'Eki Rahmawati', 'Surabaya', '085731565543'),
(1009, 10009, 'Nirina', 'Malang', '087676778876'),
(1010, 10010, 'Maria', 'Surabaya', '03417778789');

-- --------------------------------------------------------

--
-- Table structure for table `tgl_keluar`
--

CREATE TABLE IF NOT EXISTS `tgl_keluar` (
  `kode_keluar` int(11) NOT NULL AUTO_INCREMENT,
  `kode_pasien` int(11) NOT NULL,
  `kode_ruangan` int(11) NOT NULL,
  `kode_pembayaran` int(11) NOT NULL,
  `lama_pembayaran` varchar(10) NOT NULL,
  `tgl_keluar` date NOT NULL,
  PRIMARY KEY (`kode_keluar`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=83 ;

--
-- Dumping data for table `tgl_keluar`
--

INSERT INTO `tgl_keluar` (`kode_keluar`, `kode_pasien`, `kode_ruangan`, `kode_pembayaran`, `lama_pembayaran`, `tgl_keluar`) VALUES
(71, 1, 1011, 1, '5', '2011-02-23'),
(72, 2, 1012, 2, '2', '2011-02-27'),
(73, 3, 1013, 3, '0', '2011-02-24'),
(74, 4, 1014, 4, '2', '2011-02-26'),
(75, 5, 1015, 5, '0', '2011-02-28'),
(76, 6, 1016, 6, '0', '2011-02-24'),
(77, 7, 1017, 7, '3', '2011-02-25'),
(78, 8, 1018, 8, '0', '2011-02-26'),
(79, 9, 1019, 9, '2', '2011-03-04'),
(70, 10, 1020, 10, '0', '2011-02-28'),
(80, 11, 1021, 11, '4', '2011-04-30'),
(81, 12, 1022, 12, '4', '2011-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `tgl_masuk`
--

CREATE TABLE IF NOT EXISTS `tgl_masuk` (
  `kode_masuk` int(11) NOT NULL,
  `kode_pasien` int(11) NOT NULL,
  `kode_dokter` int(11) NOT NULL,
  `kode_ruangan` int(11) NOT NULL,
  `tgl_masuk` date NOT NULL,
  PRIMARY KEY (`kode_masuk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tgl_masuk`
--

INSERT INTO `tgl_masuk` (`kode_masuk`, `kode_pasien`, `kode_dokter`, `kode_ruangan`, `tgl_masuk`) VALUES
(61, 1, 10010, 1011, '2011-02-11'),
(62, 2, 10003, 1012, '2011-02-11'),
(63, 3, 10003, 1013, '2011-02-12'),
(64, 4, 10004, 1014, '2011-02-14'),
(65, 5, 10005, 1015, '2011-02-14'),
(66, 6, 10006, 1016, '2011-02-14'),
(67, 7, 10003, 1017, '2011-02-15'),
(68, 8, 10008, 1018, '2011-02-16'),
(69, 9, 10009, 1019, '2011-02-17'),
(71, 10, 10002, 1020, '2011-04-02'),
(73, 12, 10002, 1022, '2011-04-19'),
(72, 11, 10002, 1021, '2011-04-26');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
