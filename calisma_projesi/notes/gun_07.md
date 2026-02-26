
# 🚀 Gün 7📱 Flutter Çalışma Notları: Görsel Tasarım ve Liste Yönetimi

**1. Görsel Özelleştirme ve BoxDecoration**
Widget'lara şekil vermek ve çerçeve eklemek için BoxDecoration kullanılır.


* Daire Şekli: Tam bir daire oluşturmak için borderRadius: BorderRadius.circular(40) yerine shape: BoxShape.circle kullanmak daha temiz ve garantidir. Bu sayede widget boyutları değişse bile yuvarlak formunu korur.
+1


* Çerçeve (Border): Border.all komutu ile widget'ın dört yanına eşit kalınlıkta ve renkte çerçeve eklenir.


###### İpucu: Çerçevenin resim üzerinde daha belirgin olması için Colors.white.withOpacity(0.5) gibi yarı saydam renkler tercih edilebilir.

**2. Tıklama Özellikleri (Interactivity)**
Oluşturulan görüntülere veya herhangi bir widget'a tıklama özelliği kazandırmak için iki ana yöntem vardır:


* GestureDetector: Dokunma olaylarını (tıklama, çift tıklama, sürükleme vb.) detaylıca dinlemek ve kontrol etmek için kullanılır.


* InkWell: Hazır butonlar gibi çalışır; tıklanma esnasında görsel bir dalgalanma efekti (ripple effect) oluşturur ve renk değiştirebilir.


##### Püf Noktası: Sınıf içindeki değişkenlerin dışarıdan değiştirilmesini engellemek (private yapmak) için isimlerinin başına _ (alt çizgi) konulur.

**3. StatefulWidget ve Ekran Yenileme**
Statik ekranlar için StatelessWidget, dinamik ve hareketli ekranlar için StatefulWidget kullanılır.


* Dönüştürme: VS Code'da bir StatelessWidget üzerine tıklayıp ampul simgesinden "Convert to StatefulWidget" diyerek widget'ı yenilenebilir hale getirebilirsin.


* setState(): Değişken değeri değiştiğinde (örneğin sayaç arttığında) bu değişikliğin ekrana yansıması için setState() fonksiyonu şarttır. Eğer kullanılmazsa değişken değeri arka planda değişir ama ekran güncellenmez.
+1


* Kod Dizilimi: Değişkenler ve fonksiyonlar class _SayacScreenState bloğu içerisinde, build metodunun üzerinde tanımlanır.

**4. Veri Listeleme ve Kritik Hatalar**
Bir listeyi (örneğin meyveler listesi) ekranda göstermek için verileri widget'lara dönüştürmek gerekir.

* Map Fonksiyonu ve Spread Operator (...)
Listeyi children içinde kullanırken şu yapı izlenir:

//
children: elemanlar.map((e) => Container(...)).toList(),

#### Kritik Hata (Kırmızı Ekran): children listesi içine hem bir buton hem de elemanlar.map listesini koyarsanız Flutter hata verir çünkü liste içinde liste oluşur.
+1


* Çözüm: Listenin başına üç nokta (...) yani Spread Operator koyulmalıdır. Bu operatör, listedeki elemanları paketinden çıkarıp tek tek ana listeye dağıtır.
+1

Gelişmiş Liste Widget'ları
* SingleChildScrollView: Eğer içerik ekrana sığmazsa taşma hatası oluşur. Bu widget, içine konulan alanı kaydırılabilir (scrollable) yapar.


* ListView.builder: Binlerce elemanlı listelerde performansı korumak için kullanılır. Sadece ekranda görünen elemanları yükler, kaydırdıkça yenilerini oluşturur ve görünmeyenleri bellekten siler.
+1

* ListView.separated: ListView.builder'ın gelişmiş halidir. separatorBuilder parametresi sayesinde elemanların arasına çizgi (Divider) veya boşluk eklemenize olanak tanır.