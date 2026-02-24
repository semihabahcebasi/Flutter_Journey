# 🚀 Gün 5: Sayfa Geçişleri (Navigation) ve Route Yönetimi

Bugün uygulamama derinlik kattım ve birden fazla ekran arasında gezinmeyi (yönlendirme/routing) öğrendim. Artık tek bir sayfaya hapsolmak yok! 🗺️

### 🧠 Bugünün Kazanımları

**1. Ekranları (Sayfaları) Ayırma ve Klasör Yapısı 📂**
* Karmaşayı önlemek için `lib` klasörü içerisine bir `screens` klasörü oluşturdum ve ekran dosyalarımı (örn: `home_screen.dart`) burada topladım.
* `main.dart` dosyamdaki `Scaffold` kısmını kesip, `home_screen.dart` içinde `stless` ile oluşturduğum ana iskeletin (return kısmı) içine yapıştırarak kodlarımı modüler hale getirdim.

**2. Yeni Ekrana Geçiş (Navigator.push) ➡️**
* Bir butona (`ElevatedButton`) tıklandığında başka bir sayfaya gitmek için `Navigator.push` metodunu kullanmayı öğrendim.
* Gidilecek sayfanın rotasını (yolunu) belirlemek için `MaterialPageRoute` kullanmak gerekiyor.
* **Kullanımı:**
```dart

Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => SecondScreen()),
);
```

**3. Önceki Ekrana Geri Dönüş (Navigator.pop) ⬅️**
* Gidilen sayfadan (örneğin 2. ekran) ilk sayfaya geri dönmek için butonun onPressed özelliğine Navigator.pop(context) yazmak yeterlidir.

* Önemli Detay: Geri dönerken tekrar MaterialPageRoute ile sayfa belirtmeye gerek yoktur! pop komutu, bulunduğu sayfadan çıkış yapar ve geldiği ekrana otomatik geri döndürür.

**4.Ekranı Tamamen Değiştirme (Navigator.pushReplacement) 🔄**
* push metodu yeni ekranı mevcut ekranın üzerine açar.
* pushReplacement metodu ise mevcut ekranı silip yerine yeni ekranı açar. (Giriş yaptıktan sonra ana ekrana geçerken, geri tuşuyla tekrar giriş ekranına dönülmesini engellemek için idealdir).
* **💡 Kritik Not (Kullanılmayan Import Uyarısı)**
Navigator.pop kullanırken hedef sayfayı belirtmeye gerek kalmadığı için, sayfanın üstünde kalan import '.../home_screen.dart' kodu boşa çıkar. VS Code bunu turuncu çizer. Temiz kod için bu "Unused import" satırlarını silmek gerekir.
