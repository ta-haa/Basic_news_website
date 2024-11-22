-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 13 Ara 2023, 09:40:09
-- Sunucu sürümü: 10.1.32-MariaDB
-- PHP Sürümü: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `sinop`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `haberler`
--

CREATE TABLE `haberler` (
  `id` int(10) NOT NULL,
  `baslik` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `tarih` date NOT NULL,
  `metin` text COLLATE utf8_turkish_ci NOT NULL,
  `resim` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `tur` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `haberler`
--

INSERT INTO `haberler` (`id`, `baslik`, `tarih`, `metin`, `resim`, `tur`) VALUES
(1, 'Fen Bilgisi ve İlköğretim Matematik Öğretmenliği İkinci Kez Akredite Oluyor', '2023-12-12', 'Üniversitemiz Eğitim Fakültesi Fen Bilgisi Öğretmenliği ve İlköğretim Matematik Öğretmenliği Lisans Programlarının ikinci kez akredite edilmesi çalışmaları devam ediyor.\r\n\r\n\r\nDaha önce akredite edilen Üniversitemiz Eğitim Fakültesi, Fen Bilgisi Öğretmenliği ile İlköğretim Matematik Öğretmenliği programlarının ikinci kez akredite edilmesi için Öğretmenlik Eğitim Programları Değerlendirme ve Akreditasyon Derneği (EPDAD) Değerlendirme Takımı Üyeleri, Eğitim Fakültesine saha ziyareti gerçekleştirdi.\r\n\r\n\r\nFakültemizin fiziki donanımını ve öğrencilere sunduğu olanakları inceleyen EPDAD yetkilileri, akreditasyon değerlendirmelerini tamamlayarak Üniversitemizden ayrıldı.', '', 'haber'),
(2, 'Rektörümüzden Sinop OSB’ye Ziyaret', '2023-12-07', 'Rektörümüz Prof. Dr. Şakir Taşdemir, Sinop Organize Sanayi Bölgesi’ne bir ziyaret gerçekleştirdi. Organize Sanayi Bölgesi (OSB) Müdürü Taner Aydemir bölge ile ilgili bilgiler verdi. Daha sonra OSB Yönetim Kurulu Başkanı ve Kaya-Pen Sahibi Kurtuluş Kaya ile bir araya gelen Rektör Taşdemir, sektör ile ilgili fikir alışverişinde bulundu. Üniversite-Sanayi iş birliği kapsamında gerçekleştirilecek olan çalışmalar üzerinde duruldu.\r\n\r\n\r\nKurtuluş Kaya ile Kaya-Pen fabrikasını da gezen Rektörümüz, Üniversitemizin sanayiye yönelik katkılarını artırmak amacıyla detaylı bir değerlendirme yaptı.\r\n\r\n', '', 'haber'),
(3, 'Network Bakım Çalışması', '2023-12-01', '06 Aralık 2023 tarihinde ( Bugün ) saat 17.30’dan itibaren Bilgi işlem Daire Başkanlığınca Üniversitemiz network altyapısında güncelleme ve bakım çalışması yapılacaktır.\r\n\r\nÇalışma  sırasında zaman zaman Üniversitemiz web sitelerine, uygulamalarına erişememe durumu yaşanabilecektir.\r\n\r\nÜniversitemiz öğrenci ve personeline duyurulur.', '', 'etkinlik'),
(4, 'Yemekhanelerde Rezervasyonlu Sisteme Geçiliyor!', '2023-12-08', 'Öğrenci ve personelimiz rezervasyonlarını aşağıdaki link üzerinden yapabilir.\r\nhttps://yukleme.sinop.edu.tr/User/Login\r\n\r\nRezervasyon bilgilendirme metnine aşağıdaki link üzerinden ulaşabilirsiniz.\r\nhttps://sksdb.sinop.edu.tr/yemek-hizmetlerinde-rezervasyonlu-sisteme-geciyoruz/', 'yemekhane_rezervasyon_afis-736x1024.jpg', 'etkinlik'),
(5, 'Öğrencilerimize “Kütüphane Oryantasyonu Eğitimi” Verildi', '2023-12-01', 'Üniversitemiz Kütüphane ve Dokümantasyon Daire Başkanlığı tarafından 2023-2024 Akademik yılında ön lisans ve lisans programlarına başlayan 1. Sınıf öğrencilerine yönelik, “Kütüphane Oryantasyonu Eğitimi” verildi.\r\n\r\nEğitimlerde, Merkez ve Birim Kütüphanelerimizde basılı kaynakları tarama, ödünç-iade, süre uzatma işlemleri ile makale, tez, dergi ve e-kitaplara veri tabanlarına erişim hakkında kapsamlı bilgiler anlatıldı.\r\n\r\nEğitimlerde Kütüphane Personelinden Şube Müdürü Nilüfer Özer, Öğretim Görevlisi Altuğ Abuşoğlu ve Kütüphaneci Türkan Akman Karataş söz alarak öğrencilerin kaynak kullanımlarında dikkat edilecek noktalarını, yeni dönemde çalışacak part-time öğrencilerin çalışma koşullarını ve VPN hizmetlerini aktardılar.\r\n\r\n', '', 'duyuru');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `haberler`
--
ALTER TABLE `haberler`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `haberler`
--
ALTER TABLE `haberler`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
