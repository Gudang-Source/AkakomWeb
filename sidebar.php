<?php
  include_once "koneksi.php";
  $sqlUtama = "SELECT * FROM tb_berita WHERE arsip_utama=1 ORDER BY id DESC LIMIT 8";
  $arsip = mysqli_query($konek, $sqlUtama);
?>
    <div class="card">
      <div class="card-header bg-primary text-white">
        Arsip Utama
      </div>
      <ul class="list-group list-group-flush">
        <?php
          while ($row=mysqli_fetch_assoc($arsip)) {
        ?>
        <li class="list-group-item">
          <small class="text-muted"><?php echo $row['author']; ?>, <?php echo $row['tanggal']; ?></small>
          <br>
          <a href="<?php echo "detailberita.php?id=".$row['id']; ?>"><?php echo $row['judul']; ?></a>
        </li>
        <?php } ?>
      </ul>
    </div>
  </div>
