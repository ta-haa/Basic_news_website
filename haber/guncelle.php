<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Haber/Duyuru/Etkinlik Güncelleme</title>
</head>

<body>
	<?php
	include("baglan.php");
	$gelen_id=$_GET['Git'];

$sql = "Select * from haberler where id='$gelen_id'";
$sonuc = mysqli_query( $conn, $sql);
	
$satir=mysqli_fetch_array($sonuc);
	?>
<form action="" method="post">
	
	<p>Başlık</p>
	<input type="text" name="baslik" value="<?php echo $satir['baslik'] ?>" size="100px">
	
	<p>Tarih</p>
	<input type="text" name="tarih" value="<?php echo $satir['tarih'] ?>" size="100px">
	
	<p>Metin</p>
	<textarea name="metin" cols="95" rows="10"><?php echo $satir['metin'] ?></textarea>
	
	<p>Resim</p>
	<input type="text" name="resim" value="<?php echo $satir['resim'] ?>" size="100px">
	
	<p>Tür</p>
	<input type="text" name="tur" value="<?php echo $satir['tur'] ?>" size="100px">
	<input type="submit" name="update" value="Güncelle">
	</form>
</body>
</html>

<?php
if (isset($_POST['update']))
{
	$baslik=$_POST["baslik"];
	$tarih=$_POST["tarih"];
	$metin=$_POST["metin"];
	$tur=$_POST["tur"];
	$resim=$_POST["resim"];
	$sql2="Update haberler Set baslik='$baslik', tarih='$tarih', metin='$metin', tur='$tur', resim='$resim' where id='$gelen_id'";
	
	mysqli_query($conn,$sql2);
	header("location:index.php");
	
}
	?>