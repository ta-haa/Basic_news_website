<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Haber Sitesi</title>
<link rel="stylesheet" href="style.css">
</head>

<body>
<div style="width:1620px;height: 120px;background:#F46402;"> <img style="padding:10px;float:left;" src="images/logo.png" 
		 alt="sinop logo">
  <h1 style="padding:40px;color:#EDE5E5;"> SİNOP ÜNİVERSİTESİ | Haberler, Duyurular ve Etkinlikler</h1>
</div>
<?php
include( "baglan.php" );
$sql1 = "Select * from haberler where tur='haber'";
$sonuc1 = mysqli_query( $conn, $sql1 );
?>
<div id="haber">
  <h2>HABERLER</h2>
  <hr>
  <?php
  while ( $satir = mysqli_fetch_array( $sonuc1 ) ) {
      echo "<b>" . $satir[ 'baslik' ] . "</b> || ";
	 
	  $id=$satir[ 'id' ];
	  echo "<a href='guncelle.php?Git=$id'>Güncelle</a>";
    
	  echo "<br>";
          echo $satir[ 'metin' ];
      echo "<br><br>";
  }
	
  ?>
</div>
<?php
$sql2 = "Select * from haberler where tur='duyuru'";
$sonuc2 = mysqli_query( $conn, $sql2 );
?>
<div id="duyuru">
  <h2>DUYURULAR</h2>
  <hr>
  <?php
  while ( $satir = mysqli_fetch_array( $sonuc2) ) {
      echo "<b>" . $satir[ 'baslik' ] . "</b> || ";
	
	  $id=$satir[ 'id' ];
	  echo "<a href='guncelle.php?Git=$id'>Güncelle</a>";
    
	  echo "<br>";
      echo $satir[ 'metin' ];
      echo "<br><br>";
  }
  ?>
</div>
	<?php
$sql3 = "Select * from haberler where tur='etkinlik'";
$sonuc3 = mysqli_query( $conn, $sql3 );
?>
<div id="etkinlik">
  <h2>ETKİNLİKLER</h2>
  <hr>
	<?php
  while ( $satir = mysqli_fetch_array( $sonuc3 ) ) {
      echo "<b>" . $satir[ 'baslik' ] . "</b> || ";
	
	  $id=$satir[ 'id' ];
	  echo "<a href='guncelle.php?Git=$id'>Güncelle</a>";
    
	  echo "<br>";
      echo $satir[ 'metin' ];
      echo "<br><br>";
  }
	?>
</div>
<footer>Tasarım ve Kodlama: Ayancık MYO &copy;2023</footer>
</body>
</html>