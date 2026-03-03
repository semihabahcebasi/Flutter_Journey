import 'dart:convert'; // json verisiyle çalışmak için dart:convert kütüphanesini kullanırız

import 'package:calisma_projesi/models/urunler_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// bu sayfada yan yana ürünlerimiizin kategorileri olacak
// ve sayfanın kalanında alt alata ürünlerimiz oalcak
// ve yukarıdaki kategorilere tıklandığında o kategoriye ait ürünler alt alta gelecek(filtrelenecek)

class MenuBoxScreen extends StatefulWidget {
  const MenuBoxScreen({super.key});

  @override
  State<MenuBoxScreen> createState() => _MenuBoxScreenState();
}

class _MenuBoxScreenState extends State<MenuBoxScreen> {
  UrunlerModel? _veriler;

  void _loadData() async {
    final dataString = await rootBundle.loadString(
      'assets/files/data.json',
    ); //okurken rootBundle kullanırız
    // veriyi okuduk ama string tipinde okuyo. biz bunu json a çevirelim ki içindeki verilere erişebilelim
    final dataJson = jsonDecode(
      dataString,
    ); // jsonDecode ile stringi json a çevirdik , encode ise jsun u stringe çevirir.
    //UrunlerModel(id, kategori, isim, resim);
    _veriler = UrunlerModel.fromJson(dataJson);
    //verimiz güncellendiyse ve ekranda göstermek istiyorsak setState yapmamız gerekir
    setState(() {});

    /*Urun.fromJson({
      "id": 16,
      "kategori": 3,
      "isim": "Süt",
      "resim": "assets/image/süt.png",
    });*/
  }

  // uygulama çalıştığında json ı nasıl gösteririrz.
  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _veriler == null
            ? const Text("data yükleniyor")
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _kategoriView(veriler: _veriler), // vieww oluşturduk
                  ListView.separated(
                    shrinkWrap:
                        true, // kendi boyutunu çok fazla kaplamasın diye kullanırız
                    itemCount: _veriler!.urunler.length,
                    itemBuilder: (context, index) {
                      final Urun urun = _veriler!.urunler[index];
                      return ListTile(
                        leading: Image.network(
                          urun.resim,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        title: Text(urun.isim),
                      );
                    },
                    separatorBuilder: (context, index) => Divider(height: 10),
                  ),
                ],
              ),
      ),
    );
  }
}

class _kategoriView extends StatelessWidget {
  const _kategoriView({super.key, required UrunlerModel? veriler})
    : _veriler = veriler;

  final UrunlerModel? _veriler;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        _veriler!.kategoriler.length,
        (index) => GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(172, 68, 111, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(_veriler!.kategoriler[index].isim),
          ),
        ),
      ),
    );
  }
}
