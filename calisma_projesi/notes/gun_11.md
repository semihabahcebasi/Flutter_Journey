# 🚀 Gün 11📑 Dinamik Filtreleme ve State Yönetimi
Bu aşamada, sabit bir listeden veri göstermek yerine, kullanıcının etkileşimine göre şekillenen dinamik bir menü yapısı kurgulandı. Karşılaşılan teknik zorluklar ve uygulanan çözümler aşağıda detaylandırılmıştır.

**🎯 Kazanımlar: Kategorilere Göre Filtreleme**


#### 1. Dinamik Liste Yönetimi
Sadece ana veri modeline bağlı kalmak yerine, ekranda o an gösterilecek olan ürünler için ayrı bir List<Urun> _urunler listesi oluşturuldu.

Neden? Ana veriyi (_veriler) bozmadan, üzerinde filtreleme işlemleri yapıp sonucu kullanıcıya anlık yansıtabilmek için.

#### 2. .where() Metodu ile Veri Filtreleme
Dart'ın koleksiyon metodlarından biri olan .where(), SQL'deki WHERE sorgusu gibi kullanılarak belirli bir kategori ID'sine sahip elemanlar süzüldü.

```
void _filterData(int id) {
  _urunler = _veriler!.urunler
      .where((verilerEleman) => verilerEleman.kategori == id)
      .toList(); // Süzülen veriyi yeni listeye aktar
  setState(() {}); // Ekranı güncelle
}
```
#### 3. ListView RangeError (İndeks Aşımı) Çözümü
Sorun: Kategoriye tıklandığında uygulamanın kırmızı ekran vermesi.
Analiz: ListView.builder'ın itemCount değeri ile itemBuilder'da kullanılan listenin uzunluğunun uyuşmaması. Eğer itemCount değeri 15 elemanlı ana listeden alınıp, veri 3 elemanlı filtrelenmiş listeden çekilmeye çalışılırsa Flutter "olmayan elemana erişim" hatası verir.
Çözüm: itemCount değeri, her zaman ekranda o an gösterilen güncel listenin uzunluğuna (_urunler.length) bağlandı.

**🛠 Kullanılan Teknik Yapılar**
Expanded Widget: Column içindeki ListView'un ne kadar alan kaplayacağını bilmemesinden kaynaklanan boyut hatalarını önlemek için kullanıldı.

*Single Responsibility (Tek Sorumluluk):* Veriyi ilk kez yükleme (_loadData), filtreleme (_filterData) ve filtreyi sıfırlama (_resetFilter) işlemleri ayrı fonksiyonlara bölünerek kod okunabilirliği artırıldı.