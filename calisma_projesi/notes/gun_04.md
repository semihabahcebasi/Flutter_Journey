# 🚀 Gün 4: Dosya Yapısı ve Widget (Bileşen) Yönetimi Detaylar

Bugün kodlarımı daha düzenli ve modüler hale getirmek için bileşenleri (widget) ayrı dosyalara taşımayı ve IDE kısayollarını kullanarak hızlanmayı öğrendim. 📁

### 🧠 Bugünün Kazanımları

**1. Dosya Yapısını Hazırlama ve Bileşen Çağırma 📂**
* Bileşenleri ayrı bir `.dart` dosyasına koymak gerekiyor (Örn: `lib/widgets/ozel_buton.dart`).
* Yeni bileşen dosyasında en üste `import 'package:flutter/material.dart';` eklemek şart.
* Oluşturulan bileşeni ana dosyada kullanmak için, dosyanın yolunu en üste import etmek gerekiyor.
* Böylece bileşen sanki o dosyanın içindeymiş gibi `child: OzelButon()` şeklinde kullanılabiliyor.

**2. Bileşen Oluşturma Yöntemleri 🛠️**
* **Extract Widget (En Kolay Yol):** Ana dosyadaki koda tıklayıp, Sarı Ampulden (`Ctrl + .`) "Extract Widget" seçilir. İsim verilir ve oluşan class kesilip yeni dosyaya yapıştırılır.
* **stless Kısayolu:** Boş dosyada `stless` yazıp Enter'a basılır. İskelet otomatik oluşur.

**💡 Kritik Not (Hata Çözümü)**
* Extract işlemi sırasında "Reference to an enclosing class method cannot be extracted" hatası alırsam, o parça bulunduğu sınıftaki bir değişkene/fonksiyona sıkı sıkıya bağlıdır, doğrudan koparılamaz.

**✨ VS Code Hayat Kurtarır**
* Dosyayı taşıdığımda altı kırmızı çizilirse, üzerine gelip `Ctrl + .` ile "Import library..." diyerek yolu otomatik yazdırabilirim.