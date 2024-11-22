<?php
$gelen=$_GET['Git'];

	$baslik=$_POST["baslik"];
	$tarih=$_POST["tarih"];
	$metin=$_POST["metin"];
	$tur=$_POST["tur"];
	$resim=$_POST["resim"];
	
	$sql="Update haberler Set baslik='$baslik', tarih='$tarih', metin='$metin', tur='$tur', resim='$resim' where id='$gelen'";
	
	mysqli_query($sql);
	header("location:index.php");
	

	
	?>