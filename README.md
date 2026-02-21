# Flutter_Journey
Dart temellerinden sonra Flutter ile mobil uygulama geliştirme yolculuğum. Her gün yeni bir widget, her gün yeni bir özellik! 🚀
# 📱 Flutter Öğrenme Günlüğü

Bu repoda, Flutter yolculuğumda öğrendiğim konuları ve günlük pratiklerimi takip ediyorum.

## 🚀 Flutter Öğrenme Günlüğü - Gün 2: Görsel Tasarım ve Etkileşim
Dün kurduğumuz iskeletin üzerine bugün "görsel disiplin" ve "kullanıcı etkileşimi" katmanlarını ekledim. Artık sadece kutular dizmiyorum, onlara kimlik kazandırıyorum! 🎨

### 🧠 Bugünün Kazanımları
**1. Etkileşimin Anahtarı: Butonlar 🖱️**
Kullanıcıyla bağ kurmanın iki farklı yolunu öğrendim:


ElevatedButton: Belirgin arka planı ve gölgesiyle ana eylemleri (örneğin "Kaydet") vurgulamak için kullanılır.


TextButton: İkincil eylemler veya form iptalleri için daha sade, gölgesiz bir yapı sunar.


Konsol Takibi: onPressed bloğunda print() kullanarak UI ve kod arasındaki bağlantıyı test etmeyi deneyimledim.

**2. Container: Arayüzün İsviçre Çakısı 🛠️**
Sadece bir kutu değil, tasarımın merkez üssü!


Hizalama: alignment: Alignment.center veya Center widget'ı ile içerikleri kusursuz şekilde ortalamayı öğrendim.


Decoration (Stil Verme): BoxDecoration ile bir kutuyu modern bir tasarım öğesine dönüştürmeyi keşfettim.


Köşeler: BorderRadius.circular ile yumuşatılmış köşeler.


Gölgeler: BoxShadow ile derinlik algısı (blur, spread ve offset değerleri).
+1


Geçişler: LinearGradient ile dinamik renk geçişleri.

**3. Yerleşim Disiplini: Padding & Margin 📏**
Tasarımda "nefes alma alanı" yaratmanın farkını öğrendim:


Padding: İçerik ile kutu kenarı arasındaki mesafe.


Margin: Kutunun dışındaki diğer bileşenlerle arasındaki mesafe.


Özel Durum: Image gibi widget'lara boşluk vermek için onları bir Padding widget'ı ile sarmalamak gerektiğini not ettim.

### 💡 Kritik Not
Eğer bir Container içinde decoration tanımlanmışsa, color parametresini mutlaka bu yapının içine yazmalısın. Aksi takdirde Flutter hata fırlatır! ⚠️ 

🛠️ Uygulama Pratiği
Bugün öğrendiklerimle profesyonel bir "Hazır Card Yapısı" kurguladım:


İskelet: Belirli boyutlarda bir Container.


Kimlik: LinearGradient ve BoxShadow ile derinlik.


Modern Görünüm: BorderRadius.circular(20).


Etkileşim: İçine yerleştirilen bir ElevatedButton.

---
*Bu gelişim günlüğü düzenli olarak güncellenmektedir.*



## ✍️ Gün 1 - Öğrenilenler

* **Temeller:** `main()` fonksiyonu ve `runApp()` komutu ile uygulamanın başlatılması.
* **Widget Yapısı:** `StatelessWidget` kullanımı ve VS Code `stless` kısayolu.
* **Uygulama İskeleti:** `MaterialApp` ve `Scaffold` hiyerarşisi.
* **Görsel Yönetim:** `pubspec.yaml` üzerinden asset (resim ve font) tanımlama süreçleri.
* **Layout (Düzen):** `Column`, `Row` ve `SizedBox` ile arayüz yerleşimi.
* **Uygulama Pratiği:** "Firuzan" projesi ile tüm bu yapıların sentezlenmesi.

---
*Bu gelişim günlüğü düzenli olarak güncellenmektedir.*
