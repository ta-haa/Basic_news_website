<?php 
session_start();
ob_start();
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Admin Panel</title>
	<link rel="stylesheet" href="style2.css">
</head>

<body>
	<div style="width:600px;margin:100px auto;">

<form action="" method="post">
  <div class="imgcontainer">
    <img src="img_avatar2.png" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <label for="uname"><b>Kullanıcı Adı</b></label>
    <input type="text" name="kullanici" required>

    <label for="psw"><b>Şifre</b></label>
    <input type="password" name="sifre" required>
        
    <button type="submit" name="giris">Giriş</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Beni Hatırla
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
     <span class="psw"><a href="#">Şifreni unuttun mu?</a></span>
  </div>
</form>
		</div>
</body>
</html>
<?php
if(isset($_POST["giris"]))
{
	if(($_POST["kullanici"]=="admin") and ($_POST["sifre"]=="12345")){
$_SESSION["login"] = "true";
$_SESSION["user"] = "admin";
$_SESSION["pass"] = "12345";
header("Location:index.php");
}else{
echo "<center>Kullanıcı adı veya şifreyi yanlış Girdiniz.<br>";
header("Refresh: 25; url=admin.php");
}
ob_end_flush();
}
