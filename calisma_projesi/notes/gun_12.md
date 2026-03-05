# Flutter: JSON Verisini Modele Dönüştürme ve Listeleme Notları
Bu süreç 4 temel adımdan oluşur: Hazırlık, Model Oluşturma, Veriyi Okuma ve Arayüzde Göstermek.

## 1. Adım: Hazırlık ve Varlıkların (Assets) Tanımlanması
JSON dosyanı projerine dahil etmelisin.

Proje ana dizininde assets/files/ klasörü oluştur ve data.json dosyanı içine koy.

* pubspec.yaml dosyasına giderek bu yolu kaydet:

```
YAML
flutter:
  assets:
    - assets/files/data.json
```

## 2. Adım: Model Sınıfını Oluşturma (Factory Constructor)
Ham JSON verisini "Nesne"ye dönüştürmek için model kullanırız. Bu, data['isim'] yazmak yerine data.isim yazmanı sağlar (hata yapma riskini azaltır).

**Örnek Ürün Modeli (urun_model.dart):**

```
Dart
class Urun {
  final int id;
  final String isim;
  final String resim;

  Urun({required this.id, required this.isim, required this.resim});

  // JSON'dan nesne üreten fabrika (factory) metodu
  factory Urun.fromJson(Map<String, dynamic> json) {
    return Urun(
      id: json['id'],
      isim: json['isim'],
      resim: json['resim'],
    );
  }
}
```

## 3. Adım: JSON Verisini Uygulamaya Çekmek
Veriyi okumak için rootBundle kullanmalısın. Bu işlem zaman alacağı için async (asenkron) olmalıdır.

```
Dart
import 'dart:convert'; // jsonDecode için
import 'package:flutter/services.dart'; // rootBundle için

// Verileri tutacağımız liste
List<Urun> tumUrunler = [];

Future<void> veriyiYukle() async {
  // 1. Dosyayı String olarak oku
  final String response = await rootBundle.loadString('assets/files/data.json');
  
  // 2. String'i JSON formatına (Map/List) çevir
  final data = await json.decode(response);

  // 3. Listedeki her bir JSON öğesini Urun nesnesine çevir ve listeye ekle
  setState(() {
    tumUrunler = (data['urunler'] as List)
        .map((e) => Urun.fromJson(e))
        .toList();
  });
}

```
## 4. Adım: initState ve Arayüz (UI) Kontrolü
Uygulama açılır açılmaz verinin yüklenmesi için initState içinde fonksiyonu çağırmalısın.

```
Dart
@override
void initState() {
  super.initState();
  veriyiYukle(); // Uygulama başlarken veriyi çek
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: tumUrunler.isEmpty 
      ? Center(child: CircularProgressIndicator()) // Veri gelene kadar yükleniyor göster
      : ListView.builder(
          itemCount: tumUrunler.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.network(tumUrunler[index].resim),
              title: Text(tumUrunler[index].isim),
            );
          },
        ),
  );
}

```

##### 💡 Kritik İpuçları

**Factory Metodu:** JSON anahtarlarıyla ('id', 'isim') modeldeki değişkenleri eşleştirirken isimlerin JSON dosyasındakiyle birebir aynı olduğundan emin ol.

**setState:** Veri yüklendikten sonra ekranın güncellenmesi için setState kullanmayı unutma, yoksa liste boş görünür.

**ShrinkWrap:** Eğer bir ListView'u bir Column içinde kullanıyorsan ve hata alıyorsan shrinkWrap: true özelliğini ekle.

_________________________________________________________________________________________


## Dikkat💡 : Arayüzden Önce Test Etme (Debug Console)
Veriyi başarılı bir şekilde modele çevirip çevirmediğini anlamak için print() fonksiyonunu kullanırız. Ancak tumUrunler bir nesne listesi olduğu için direkt yazdırmak işe yaramayabilir. Şunları yapmalısın:

### 1. Ham Veriyi ve Model Verisini Yazdırma
veriyiYukle fonksiyonun içine şu satırları ekleyerek kontrol et:

```

Dart
Future<void> veriyiYukle() async {
  final String response = await rootBundle.loadString('assets/files/data.json');
  final data = await json.decode(response);

  // TEST 1: Ham JSON verisi geliyor mu?
  print("Ham JSON Verisi: $data");

  setState(() {
    tumUrunler = (data['urunler'] as List)
        .map((e) => Urun.fromJson(e))
        .toList();
  });

  // TEST 2: Listeye başarıyla eklendi mi ve kaç tane ürün var?
  print("Toplam Ürün Sayısı: ${tumUrunler.length}");

  // TEST 3: İlk ürünün ismini çekebiliyor muyum?
  if (tumUrunler.isNotEmpty) {
    print("İlk Ürünün İsmi: ${tumUrunler[0].isim}");
  }
}

```
### 2. Hataları Yakalama (Try-Catch)
Eğer JSON dosyasında bir harf hatası veya modelde yanlış bir tip (örneğin String beklerken int gelmesi) varsa uygulama çöker. Bunu Debug Console'da görmek için yapıyı şu şekilde kurmalısın:

```
Dart
try {
  // Veri yükleme kodları buraya...
} catch (hata) {
  print("Bir hata oluştu: $hata");
}
```
##### 💡 Debug İpucu
Debug Console çok kalabalıksa, çıktılarını daha kolay fark etmek için başına emoji veya belirgin işaretler ekleyebilirsin:
print("✅ VERİ GELDİ: ${tumUrunler.length} adet ürün yüklendi.");
print("❌ HATA OLUŞTU: $hata");