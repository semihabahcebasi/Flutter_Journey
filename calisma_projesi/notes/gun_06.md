# 📱 Flutter Çalışma Notları: Stack & Positioned Widget
Bu bölümde, widget'ları üst üste bindirmek ve bu widget'ların konumlarını hassas bir şekilde ayarlamak için kullanılan yapıları inceledik. 

**1. Stack Widget**
* Stack (Yığın), çocuklarını birbiri üzerine bindirmek için kullanılır. Listenin ilk elemanı en altta, son elemanı ise en üstte görünür. 


* Kullanım Amacı: Özellikle bir resmin üzerine yazı veya buton eklemek (örneğin: Zikirmatik uygulaması) için idealdir. 
+1

* * Hata Notu: Image widget'ı bir kapsayıcı değildir; içine child alamaz. Bu yüzden üzerine bir şey eklemek için Stack kullanılması şarttır. 

**2. Positioned Widget**

* Stack içerisindeki bir elemanın yerini tam olarak belirlemek (koordinat vermek) için kullanılır. 
+1


* Parametreler: top, bottom, left, right değerleri ile hizalama yapılır. 


* Örnek: top: 65 ve right: 112 verilerek yazı resmin tam istenen noktasına yerleştirilmiştir.

### 💡 Küçük İpuçları

* debugShowCheckedModeBanner: false: Uygulamanın sağ üst köşesindeki kırmızı "Debug" bandını kaldırmak için kullanılır. 


* Custom Fonts: Yazı tipini özelleştirmek için TextStyle içerisinde fontFamily kullanılır.