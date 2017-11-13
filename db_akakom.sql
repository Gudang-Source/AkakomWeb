-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 13, 2017 at 05:42 
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_akakom`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `gambar` text,
  `author` varchar(50) NOT NULL,
  `arsip_utama` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_berita`
--

INSERT INTO `tb_berita` (`id`, `judul`, `isi`, `id_kategori`, `tanggal`, `gambar`, `author`, `arsip_utama`) VALUES
(1, 'Kuliah TAMU Dengan Tema “Mencegah Paham Radikalisme Dengan Mengamalkan Pancasila”', 'Kuliah TAMU dengan tema “Mencegah Paham Radikalisme dengan Mengamalkan Pancasila”  yang diselenggarakan oleh BEM STMIK AKAKOM, Sabtu, (14/10/2017). Kuliah tamu ini diselenggarakan di Ruang Presentasi Akakom dengan narasumber Drs. H. Muhammad Idham Samawi. Peserta dari kuliah tamu ini dihadiri oleh mahasiswa STMIK AKAKOM. Kuliah tamu dibuka oleh Ibu Syamsu Windarti selaku bidang kemahasiswaan STMIK AKAKOM.\r\n \r\n\r\nTujuan dilaksanakan kegiatan ini yaitu agar dapat mengamalkan pancasila dan mengimplementasikan dalam kehidupan sehari-hari. Acara diakhiri dengan pemberian kenang-kenangan kepada pemateri.', 1, '2017-11-16 08:12:17', 'kuliahtamu.jpg', 'admin', 0),
(2, 'Kunjungan PT Freeport Indonesia Ke STMIK AKAKOM Yogyakarta', 'STMIK AKAKOM selalu bekerjasama dengan berbagai macam perusahaan-perusahaan di Indonesia, untuk keperluan hiring kampus dan menjalin kerjasama yang baik. Salah satunya adalah PT Freeport Indonesia. PT Freeport Indonesia Merupakan perusahaan afiliasi dari Freeport-McMoRan. PTFI menambang, memproses dan melakukan eksplorasi terhadap bijih yang mengandung tembaga, emas dan perak\r\n \r\n\r\nKunjungan PT Freeport Indonesia untuk keperluan hiring lulusan dari STMIK AKAKOM khususnya bagi mahasiswa yang mempunyai darah papua. Kunjungan ini dilakukan pada hari Senin, 2 Oktober 2017 di ruang puket 3. Dalam kunjungannya merencanakan akan diadakan studium general dari PT Freeport Indonesia untuk mahasiswa AKAKOM.\r\n', 1, '2017-11-08 04:17:07', 'freeport.jpg', 'kontributor', 0),
(3, 'Pelepasan Purna Tugas Bapak Ir. Hadiyono, M.M.', 'Bapak Ir. Hadiyono, M.M. adalah salah satu dosen STMIK AKAKOM Yogyakarta yang sudah mengabdi selama kurang lebih 21 tahun. Bapak Hadiyono telah memasuki masa purna tugasnya pada tanggal 12 Oktober 2017.  Pelepasan purna tugas Bapak Hadiyono dilaksanakan pada hari Jum’at, 13 Oktober 2017 di Ruang Presentasi STMIK AKAKOM.\r\nTerima Kasih Kepada Bapak Hadiyono, telah mengabdi dan memberikan karya serta ilmu untuk STMIK AKAKOM Yogyakarta \r\n', 1, '2017-11-01 02:08:09', 'pelepasanpurna.jpg', 'admin', 0),
(4, 'Kunjungan Audiensi BNNP DIY Dengan Satgas Anti Narkoba Akakom (RAHASIA)', 'STMIK AKAKOM selalu berusaha untuk menjadikan mahasiswanya agar tidak dekat dengan Narkoba. Maka dari itu salah satu upaya untuk mewujudkan kampus yang bebas narkoba, dibentuk suatu komunitas Satgas Gerakan Mahasiswa Anti Narkoba STMIK Akakom (RAHASIA). RAHASIA Akakom merupakan komunitas satuan anti narkoba mahasiswa akakom yang diketuai oleh Muhammad Veven dan wakilnya Muhammad Syahril. RAHASIA memiliki tujuan untuk memberitahu informasi-informasi terkait Narkoba.\r\nKunjungan audiensi dari BNNP (Badan Narkotika Nasional) Provinsi DIY dengan Satgas Anti Narkoba Akakom  (RAHASIA) dan Bagian Kemahasiswaan Akakom (PUKET 3) sebagai fasilitator anti narkoba ini dilakukan pada hari Kamis,(12/10/2017) di Ruang Puket 3 STMIK AKAKOM. BNNP itu sendiri merupakan lembaga atau organisasi yang menangani tentang narkoba di provinsi Daerah Istimewa Yogyakarta. Perwakilan dari BNNP yang hadir yaitu dari Kabid Pemberdayaan masyarakat (P2M)  beserta stafnya.\r\n \r\n\r\nKunjungan ini membahas tentang rencana aksi Satgas Anti Narkoba Akakom (Rahasia) untuk mewujudkan dan menjalankan rencana program ke depan dalam rangka kepedulian untuk mewujudkan kampus bebas narkoba terhadap program P4GN yang telah dicanangkan oleh Pemda DIY. ', 1, '2017-10-12 02:05:09', 'bnn.jpg', 'kontributor', 1),
(5, 'Wisuda Diploma Dan Sarjana STMIK AKAKOM Yogyakarta Periode I Tahun Akademik 2017/2018', 'Wisuda Diploma dan Sarjana yang diselenggarakan STMIK AKAKOM Yogyakarta periode I tahun 2017/2018 merupakan seremoni yang menandai berakhirnya sebuah proses pendidikan, sekaligus merupakan salah satu indikator aktivitas akademik telah berlangsung dengan baik. Untuk meningkatkan daya saing dan kompetensi para mahasiswa, disamping mengembangkan kurikulum sesuai perkembangan IT dan melakukan sertifikasi di bidang IT pada setiap program studi (Cisco, Oracle, Microsoft, MyOB), saat ini STMIK AKAKOM juga mengimplementasikan kurikulum dan sertifikasi dari NIIT India tentang web development dan English for success.\r\n\r\nProgram-program internasionalisasi kampus untuk meningkatkan kompetensi lulusan terus didorong melalui kerjasama luar negeri diantaranya dengan NIIT India, Jeonju University Korea Selatan dan NTUT Taiwan, sehingga lulusan STMIK AKAKOM ke depan akan memperoleh Sarjana Plus yaitu bergelar Sarjana Komputer dan bersertifikasi Internasional diantaranya dari NIIT India serta berpeluang belajar di luar negeri, sehingga para alumninya dengan keahlian yang khas akan mampu berkompetisi di kancah Internasional. \r\n\r\nPada upacara wisuda periode I tahun ajaran 2017/2018, STMIK AKAKOM mewisuda 210 orang, yang meliputi 159 Sarjana Komputer (Program Studi Teknik Informatika 113 orang dan Sistem Informasi 46 orang) dan 51 orang Ahli Madya Komputer (terdiri dari Manajemen Informatika 33 orang, Teknik Komputer 15 orang, dan Komputerisasi Akuntansi 3 orang). Dari 210 orang wisudawan yang memiliki IPk > 3.00 sebanyak 111 orang (52.85%), sedang yang memperoleh predikat terpuji (cumlaude) dengan IPk > 3.5 sebanyak 27 orang (12.86%). \r\n\r\nPada wisuda periode ini wisudawan terbaik dari masing-masing program studi, yaitu: Eko Riyanto, S.Kom. prodi Teknik Informatika dengan IPK = 3.91, Dika Ika Riangga, S.Kom. prodi Sistem Informasi dengan IPK = 3.67, Inggrit Siswati Putri, A.Md.Kom. prodi Manajemen Informatika,  Resita Widiawati, A.Md.Kom. prodi Teknik Komputer dengan IPK = 3.10, dan Indri Yulyani, A.Md.Kom. dari prodi Komputerisasi Akuntansi dengan IPK = 3.45.\r\n\r\nHingga saat ini, STMIK AKAKOM telah meluluskan 9.857 mahasiswa, yang bekerja  pada instansi pemerintah maupun swasta di dalam maupun di luar negeri. Sebagian besar lulusan, telah bekerja di bidang Teknologi Informasi dan Komunikasi (TIK). STMIK AKAKOM pada setiap periode wisuda menyalurkan lulusannya melalui kegiatan campus hiring dengan mengundang sejumlah perusahaan multinasional bidang teknologi informasi.', 1, '2017-11-07 13:11:22', 'wisuda2017-sept.jpg', 'kontributor', 1),
(6, 'Mahasiswa Akakom Akan Berangkat Ke Jepang', 'Nurhayati Ibrahim adalah mahasiswa Akakom yang akan menjadi wisudawati besok. Beliau juga aktif sebagai anggota Mapala Wamadika . \r\nSetelah wisuda nanti, beliau akan berangkat ke Jepang bersama tim rafting Jogja untuk mengikuti World Rafting Championship 2017, 2 - 9 Oktober 2017 di Yoshino River (Koboke section), Miyoshi city, Tokushima Prefecture. Acara ini di organisasi oleh Japan Rafting Federation dan Miyoshicity. Secara umum peserta berasal dari 22 negara. Terbagi menjadi kategori Open, Master, under 19 dan under 23. Kak Nurhayati dan tim masuk dalam kategori Open Women.\r\nKita berikan support untuk kak Nurhayati dan tim agar dapat membawa kemenangan bagi Indonesia. Semoga sukses kak ????\r\nReferensi: www.internationalrafting.com/events-2/events/wrc-2017-japan/', 1, '2017-09-14 03:10:07', 'jepang.jpg', 'admin', 1),
(7, 'Seminar Bioenergi', 'Kepuketan 3 bekerja sama dengan Bioenergi training mengadakan seminar dengn topik " Melejitkan potensi diri dan mendongkrak kesuksesan dengan kecerdasan Bioenergi pada :\r\n\r\nTgl         : 10 Maret 2015\r\n\r\nPukul     : 10.00 - 12.00 WIB\r\n\r\nTempat  : R. Presentasi STMIK AKAKOM\r\n\r\nPendaftaran peserta dapat dilakukan di kepuketan III tempat terbatas dan tidak dipungut biaya.\r\n\r\nAyo raih prestasi semester genap ini dengan awal yang baik.\r\n\r\nInfo lebih lanjut hubungi Puket III.\r\n\r\n \r\n\r\nttd\r\n\r\nPuket III', 2, '2017-11-13 18:05:24', NULL, 'admin', 0),
(8, 'Informasi KRS Jurusan TI Tanggal 25 Februari 2015', 'Diberitahukan kepada seluruh mahasiswa jurusan Teknik Informatika - S1 bahwa dalam pengambilan mata kuliah pada saat KRS TI hari pertama tanggal 25 Februari 2015 hanya dapat dilakukan di Laboratorium Terpadu. Untuk mengurangi berbagai hambatan yang akan terjadi , Pada tanggal tersebut Portal Akademik sementara tidak dapat diakses dari luar termasuk akses Wi-Fi juga akan dimatikan.\r\n\r\nAkses akan dibuka lagi setelah pukul 16.00 WIB. Demikian Informasi ini untuk dapat di perhatikan. Mohon Maaf dan Terima kasih. \r\n\r\n \r\n\r\nttd\r\n\r\nSijar', 2, '2017-11-06 11:09:19', NULL, 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `kategori`) VALUES
(1, 'Berita'),
(2, 'Info Kampus');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
