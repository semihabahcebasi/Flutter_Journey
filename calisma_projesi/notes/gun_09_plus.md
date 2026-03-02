# 🚀 Gün 9📱Flutter : JSON Verisi Okuma ve Temel Kavramlar
 
 Flutter'da dışarıdan bir JSON dosyasını okumak için asenkron (eş zamansız) işlemler yapman gerekir. 

##### Temel Terimler Sözlüğü

**await:** Bir işlemin (örneğin dosya okuma) tamamlanmasını beklemek için kullanılır.  Bu sayede program donmadan arka planda verinin gelmesini bekler.

**initState():** Widget'ın ömrü başladığında sadece bir kez çalışan metottur. Uygulama açılır açılmaz verinin yüklenmesini istiyorsan _loadData() fonksiyonunu burada çağırmalısın. 


**rootBundle:** Uygulamanın assets klasöründe bulunan dosyalara erişmek için kullanılan ana araçtır. 


**dart:convert:** JSON verisini Flutter'ın anlayabileceği bir Map veya Liste yapısına dönüştürmek için bu kütüphaneyi içeri aktarman (import) gerekir.


##### Örnek Veri Yükleme Fonksiyonu
``` void _loadData() async {
  try {
    // Assets klasöründeki dosyayı oku 
    final dataString = await rootBundle.loadString('assets/files/data.json'); 
    print("VERİ BAŞARIYLA GELDİ: $dataString"); 
  } catch (e) {
    print("HATA AYRINTISI: $e"); 
  }
}
```

##### 3. Püf Noktaları

**Hata Yakalama:** Veri okuma işlemlerinde try-catch kullanmak, dosya yolu yanlışsa veya dosya bozuksa uygulamanın çökmesini engeller. 

**Pubspec.yaml Hatırlatması:** rootBundle ile bir dosyayı okuyabilmen için o dosyanın pubspec.yaml dosyasındaki assets kısmında tanımlı olduğundan emin olmalısın.