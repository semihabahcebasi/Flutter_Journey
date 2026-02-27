# 🚀 Gün 8 📱 Flutter Çalışma Notları: Model Yapısı ve Liste Yönetimi #
**1. Liste İçinde Buton Kullanımı (Expanded Kritik Bilgi)**
Bir sayfa içinde hem bir buton hem de bir liste (ListView) kullanacaksanız, listenin ekranın geri kalanını kaplaması ve taşma hatası vermemesi için çok önemli bir kural vardır:

* Expanded Kullanımı: Column içerisindeki bir ListView, ekranın ne kadarını kaplayacağını bilemez. Bu yüzden listeyi mutlaka Expanded widget'ı ile sarmalamak gerekir.**


**2. Sözlük (Map) Yapısı ile Veri Listeleme**
Basit listelerin ötesine geçip, her eleman için hem başlık hem açıklama göstermek istediğimizde sözlük yapısını kullanırız.


Yapı: List elemanlar = [{'isim': '...', 'aciklama': '...'}]; şeklinde tanımlanır.


Erişim: elemanlar[index]['isim'] diyerek ilgili veriye ulaşılır.

Dezavantaj: Büyük projelerde "aciklama" mı yazdım yoksa "detay" mı diye sürekli kontrol etmek gerekir. Yazım hatalarına çok açıktır.

**3. Model (Nesne) Yapısına Geçiş (Profesyonel Yöntem)**
Model yapısı, aslında kendi veri tipimizi oluşturmaktır. Bu sayede kod daha güvenli ve okunabilir hale gelir.


* Model Oluşturma: lib klasörü içine models adında bir klasör açıp içine ElemanlarModel.dart dosyasını oluştur.


Constructor (Yapıcı Metot): Verileri dışarıdan alabilmek için required anahtar kelimesiyle constructor tanımlanır.

Kullanım Kolaylığı: Artık elemanlar[index]['isim'] yerine elemanlar[index].title yazarak veriye doğrudan ulaşabilirsin. VS Code sana otomatik tamamlama sunar.

**4. ListView.separated ile Düzenli Listeler**
Listelerimizi daha şık göstermek için builder yerine separated tercih edilebilir.


* separatorBuilder: Her eleman arasına otomatik olarak bir Divider() (çizgi) eklememizi sağlar.



* ListTile Özellikleri: trailing ile satır sonuna ikon ekleyebilir, tileColor ile satırları renklendirebilirsin.

**5. Sayfalar Arası Geçiş: Navigator.pop**
Açılan bir ekrandan geri dönmek için kullanılan en temel komuttur.


* Navigator.pop(context): Mevcut ekranı yığından (stack) çıkarır ve bir önceki ekrana geri döndürür.


##### 💡 Altın Tavsiye: Emülatör Siyah Ekran Hatası
Eğer emülatör bir anda kararırsa veya tepki vermezse; Chrome'da test et. Eğer Chrome'da çalışıyorsa sorun emülatördedir.


**Çözüm: Android Studio > Virtual Device Manager > Cihazın yanındaki üç nokta > Cold Boot 😊 Bu işlem cihazı fabrika ayarlarıyla (yepyeniymiş gibi) başlatır ve sorunu %90 çözer!** 
