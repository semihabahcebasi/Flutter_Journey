# 🚀 Gün 3: Mimari Temeller ve Bileşen (Component) Mantığı

Dün kutulara kimlik kazandırmıştık, bugün ise o kimliği özgürleştiriyoruz! Her bir parçayı kendi başına yaşayan, yönetilebilir bir "Bileşen" haline getirmeyi deneyimledim. 🧱

### 🧠 Bugünün Kazanımları

**1. Fonksiyonel Bileşen Yapısı (compenentUse) 🧩**
Kod kalabalığını build metodundan çıkarıp, işi uzmanına devretmeyi öğrendim:
* **Kod Okunabilirliği:** Karmaşık bir Container yapısını ayrı bir fonksiyon içine alarak ana ağacı tertemiz tuttum.
* **Modülerlik:** Bir tasarımı bir kez yazıp, ihtiyacım olan her yerde sadece ismini çağırarak kullanabilmenin (reusability) kapısını araladım.

**💡 Kritik Not (Altın Kural)**
* Eğer bir `BoxDecoration` tanımladıysak, `color` parametresini dışarıda bırakmak "Kırmızı Ekran" demektir. Renk artık dekorasyonun içindedir.