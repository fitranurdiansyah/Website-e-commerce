<?php 
	error_reporting(0);
	include 'db.php';
	$kontak = mysqli_query($conn, "SELECT admin_telp, admin_email, admin_address  FROM tb_admin WHERE admin_id = 1");
	$a = mysqli_fetch_object($kontak);

	$produk = mysqli_query($conn, "SELECT * FROM tb_product WHERE product_id = '".$_GET['id']."' ");
	$p = mysqli_fetch_object($produk);
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Monarch Store</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
	<!-- Include the Iconify library -->
	<script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>

</head>
<body>
	<!-- header -->
	<header>
		<div class="container">
			<h1><a href="index.php">Monarch Store</a></h1>
			<ul>
				<li><a href="produk.php">Produk</a></li>
			</ul>
		</div>
	</header>

	<!-- search -->
	<div class="search">
		<div class="container">
			<form action="produk.php">
				<input type="text" name="search" placeholder="Cari Produk" value="<?php echo $_GET['search'] ?>">
				<input type="hidden" name="kat" value="<?php echo $_GET['kat'] ?>">
				<input type="submit" name="cari" value="Cari Produk">
			</form>
		</div>
	</div>

	<!-- product detail -->
	<div class="section">
		<div class="container">
			<h3>Detail Produk</h3>
			<div class="box">
				<div class="col-2">
					<img src="produk/<?php echo $p->product_image ?>" width="100%">
				</div>
				<div class="col-2">
					<h3><?php echo $p->product_name ?></h3>
					<h4>Rp. <?php echo number_format($p->product_price) ?></h4>
					<p>Deskripsi :<br>
						<?php echo $p->product_description ?>
					</p>
					<p><a href="https://api.whatsapp.com/send?phone=<?php echo $a->admin_telp ?>&text=Hai, saya tertarik dengan produk Anda." target="_blank">
						Hubungin kami via WhatsApp
						<img src="img/wa.png" width="50px"></a>
					</p>
				</div>
			</div>
		</div>
	</div>

	<!-- footer -->
<div class="footer">
  <div class="container">
    <h4>Alamat</h4>
    <p><?php echo $a->admin_address ?></p>

    <h4>Email</h4>
    <p><?php echo $a->admin_email ?></p>

    <h4>No. Hp</h4>
    <p><?php echo $a->admin_telp ?></p>

    <!-- Icon section for Instagram and YouTube -->
    <div class="icon">
      <!-- YouTube Icon -->
      <a href="https://www.youtube.com/@fitranurdiansyah9920" target="_blank" rel="noopener noreferrer">
        <i class="iconify" data-icon="ant-design:youtube-filled" data-inline="false"></i>
      </a>

      <!-- Instagram Icon -->
      <a href="https://www.instagram.com/fitra041203/" target="_blank" rel="noopener noreferrer">
        <i class="iconify" data-icon="ant-design:instagram-filled" data-inline="false"></i>
      </a>
    </div>

    <small>Copyright &copy; @Fitra Nurdiansyah.</small>
  </div>
</div>
</body>
</html>