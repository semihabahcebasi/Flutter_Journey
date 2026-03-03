# 🔍 Debugging Approach – Network Image Rendering Issue
### Problem Description

Flutter uygulamasında JSON’dan yüklenen ürün verileri ListView içerisinde başarıyla görüntüleniyordu. Ancak *Image.network()* ile çekilen görseller ekranda render edilmiyordu.

Metinler doğru şekilde görünmesine rağmen görsellerin görünmemesi, sorunun veri katmanında değil network veya platform katmanında olabileceğini gösterdi.

**Investigation Strategy**

Problemi çözmek için sistematik bir debugging yaklaşımı uygulandı:

##### 1️⃣ Data Layer Verification

JSON dosyası rootBundle ile başarıyla yüklendi.

jsonDecode() ile veri parse edildi.

UrunlerModel.fromJson() doğru şekilde çalıştı.

Ürün isimleri ekranda doğru şekilde listelendi.

Sonuç: Veri katmanı sağlıklı çalışıyor.

##### 2️⃣ Android Permission Check

Android platformunda internet erişimi için izin gereklidir.

android/app/src/main/AndroidManifest.xml dosyasında <manifest> etiketi altına aşağıdaki satır eklendi:

```
<uses-permission android:name="android.permission.INTERNET"/>
```

Proje temizlenip yeniden build edildi:

*flutter clean*
*flutter pub get*
*flutter run*

Ancak problem devam etti.

##### 3️⃣ Layout Validation

ListView widget’ının Column içinde doğrudan kullanılması potansiyel render sorunlarına yol açabilir.

Bu nedenle yapı şu şekilde güncellendi:

```
Expanded(
  child: ListView.separated(...)
)
```

Bu düzenleme layout stabilitesini sağladı, ancak görseller hâlâ yüklenmedi.

##### 4️⃣ Environment-Level Diagnostics

Bu aşamada kod tarafında problem olmadığı düşünüldü ve ortam (environment) kontrol edildi.

Emulator içindeki Chrome tarayıcı test edildi:

*YouTube* erişimi vardı.

*Google* ana sayfası yüklenmiyordu.

Bu durum emulator üzerinde *DNS* veya *network cache* problemi olduğunu gösterdi.

##### 5️⃣ Emulator Reset

* Android Studio → Device Manager üzerinden:

Emulator kapatıldı

*Wipe Data* işlemi uygulandı

Emulator yeniden başlatıldı

Uygulama tekrar çalıştırıldığında:

**✅ Image.network() görselleri sorunsuz şekilde yüklendi.**

###### 🧠 Key Takeaways

Sorun her zaman koddan kaynaklanmaz; environment katmanı mutlaka kontrol edilmelidir.

Debug sürecinde katmanlı analiz yapılmalıdır:

* Data Layer

* UI/Layout Layer

* Platform Permissions

* Network Environment

* Emulator cache ve DNS problemleri gerçekçi network hatalarına sebep olabilir.

* Sistematik eleme yöntemi (elimination-based debugging) etkili sonuç verir.

**🚀 Professional Insight**

Bu süreç, Flutter projelerinde platform bağımlı sorunları analiz etme, network problemlerini izole etme ve sistematik debugging yaklaşımı uygulama konusunda pratik bir deneyim sağlamıştır.