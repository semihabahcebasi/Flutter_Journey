class UrunlerModel {
  List<Urun> urunler;
  List<kategori> kategoriler;

  UrunlerModel({required this.urunler, required this.kategoriler});

  factory UrunlerModel.fromJson(Map<String, dynamic> json) {
    final List jsonUrunler = json['urunler'];
    final List jsonKategoriler = json['kategoriler'];

    return UrunlerModel(
      urunler: jsonUrunler.map((e) => Urun.fromJson(e)).toList(),
      kategoriler: jsonKategoriler.map((e) => kategori.fromJson(e)).toList(),
    );
  }
}

class Urun {
  final int id;
  final int kategori;
  final String isim;
  final String resim;

  Urun({
    required this.id,
    required this.kategori,
    required this.isim,
    required this.resim,
  });

  /*Urun.fromJson(Map<String, dynamic> json) // json dan gelen veriyi Urun modeline çevirmek için kullanılır
      : id = json['id'],
        kategori = json['kategori'], 
        isim = json['isim'],
        resim = json['resim'];*/
  // başka bir yol

  factory Urun.fromJson(Map<String, dynamic> json) {
    return Urun(
      id: json['id'] as int,
      kategori: json['kategori'] as int,
      isim: json['isim'] as String,
      resim: json['resim'] as String,
    );
  }
}

class kategori {
  final int id;
  final String isim;

  kategori({required this.id, required this.isim});

  kategori.fromJson(Map<String, dynamic> json)
    : id = json['id'] as int,
      isim = json['isim'] as String;
}
