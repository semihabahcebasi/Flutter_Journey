# 🚀 Gün 9📱 Flutter Proje Yönetimi ve Ortam Düzenleme


* Aynı repository veya klasör altında birden fazla proje ile çalışırken VS Code bazen "kafası karışmış" gibi davranabilir.

* Klasör Yapısını Düzenleme

**Üst Klasöre Geçiş: Terminalde bir projeden çıkıp ana klasöre dönmek için cd .. komutu kullanılır.**


* Görünümü Yenileme: Birden fazla projenin aynı anda sol panelde görünmesi için VS Code'da Dosya -> Klasör Seç adımlarını izleyerek ana klasörü (örn: flutter_projeler) seçmen yeterlidir. 

##### "Kırmızı Çizgi" (Analiz) Hatalarını Çözme
Kodunda hata olmadığı halde kırmızı çizgiler görüyorsan şu üç adımı izlemelisin:


* Yolu Yalınlaştır: Import satırlarını package:... yerine import 'screens/home_screen.dart'; gibi doğrudan dosya yoluyla yazmak bazen çakışmaları önler. 


* VS Code'u Yenile (Reload Window): Editörü kendine getirmek için Ctrl + Shift + P tuşlarına basıp "Developer: Reload Window" komutunu çalıştırabilirsin. 


**Paketleri Güncelle: Terminalde projenin içindeyken flutter pub get komutunu çalıştırarak bağımlılıkları manuel olarak tetikle.**