<?php
	include "koneksi.php";
	$sqlHeadline = "SELECT * FROM tb_berita WHERE id_kategori=1 ORDER BY id DESC LIMIT 3";
	$headline = mysqli_query($konek, $sqlHeadline);
?>
<!DOCTYPE html>
<html>

<head>
	<title>STMIK Akakom</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="css/bootstrap.css">
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<a class="navbar-brand" href="index.php">STMIK Akakom</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
		  aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active">
					<a class="nav-link" href="index.php">Beranda
						<span class="sr-only">(current)</span>
					</a>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
					  aria-expanded="false">
						Profil Akakom
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="visimisi.php">Visi dan Misi</a>
						<a class="dropdown-item" href="profile.php">Profil STMIK Akakom</a>
						<a class="dropdown-item" href="#">Kontak Kami</a>
						<a class="dropdown-item" href="pejabat.php">Pejabat di STMIK Akakom</a>
						<a class="dropdown-item" href="kontak.php">Kontak Dosen STMIK Akakom</a>
					</div>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
					  aria-expanded="false">
						Program Studi/ Jurusan
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="ka.php">Komputerisasi Akuntansi (D3)</a>
						<a class="dropdown-item" href="tk.php">Teknik Komputer (D3) </a>
						<a class="dropdown-item" href="mi.php">Manajemen Informatika (D3)</a>
						<a class="dropdown-item" href="si.php">Sistem Informasi (S1)</a>
						<a class="dropdown-item" href="ti.php">Teknik Informatika (S1)</a>
					</div>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="info_kampus.php">Info Kampus</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="berita.php">Berita</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="arsip_umum.php">Arsip Umum</a>
				</li>
			</ul>

			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search" placeholder="Pencarian" aria-label="Search">
				<button class="btn btn-outline-light my-2 my-sm-0" type="submit">Cari</button>
			</form>
		</div>
	</nav>

	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100" src="img/gedung.jpg" alt="First slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="img/owasp.jpg" alt="Second slide">
				<div class="carousel-caption d-none d-md-block">
					<h3>OWASP</h3>
					<p>Event OWASP yang dilaksanakan di STMIK Akakom</p>
				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="img/pika.jpg" alt="Third slide">
				<div class="carousel-caption d-none d-md-block">
					<h3>Ruang Presentasi</h3>
					<p>STMIK Akakom menyediakan fasilitas ruang presentasi yang nyaman</p>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<br>
	<div class="container">
		<div class="row">
			<div class="card-deck">
				<?php while ($row=mysqli_fetch_assoc($headline)) { ?>
				<div class="card">
					<img class="card-img-top" src="img/<?php echo $row['gambar']; ?>" alt="Card image cap">
					<div class="card-body">
						<h4 class="card-title" align="justify"><?php echo $row['judul']; ?></h4>
						<p class="card-text" align="justify">
							<?php echo substr($row['isi'], 0, 90)."..."; ?>
						</p>
						<a href="<?php echo "detailberita.php?id=".$row['id']; ?>" class="btn btn-primary">Selengkapnya</a>
					</div>
				</div>
				<?php } ?>
			</div>
		</div>
		<br>
		<div class="row">
		  <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
				<?php include "sidebar.php"; ?>
				<div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
			    <div class="row">
			      <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
			        <img class="img-fluid" src="img/programerBersertifikat.png">
			      </div>
			    </div>
			    <div class="row">
			      <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
			        <img class="img-fluid" src="img/cisco-logo.gif">
			      </div>
			      <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
			        <img class="img-fluid" src="img/jeni.jpg">
			      </div>
			    </div>
			</div>
		</div>
		<br>
		<div class="jumbotron jumbotron-fluid">
			<div class="container">
				<h4 class="display-12 text-danger">Yang Pertama dan Utama</h4>
				<p class="lead" align="justify">
					Yayasan Pendididkan Widya Bakti berdiri dengan Akta Notaris Nomor 43 tanggal 30 Juni 1979, sebagai penyelenggara pendidikan
					tinggi dibidang komputer yang pertama di Jateng dan DIY dengan nama Akademi Aplikasi Komputer (AKAKOM). Tahun 1985 AKAKOM
					menjadi AMIK AKAKOM dan akhirnya sejak tahun 1992 menjadi STMIK AKAKOM.
				</p>
				<hr class="my-4">
				<img class="img-fluid" style="width:100%" src="img/jurusan.png">
			</div>
		</div>
	</div>

	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>

</html>
