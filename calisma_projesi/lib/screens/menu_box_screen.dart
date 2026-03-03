import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:calisma_projesi/models/urunler_model.dart';

class MenuBoxScreen extends StatefulWidget {
  const MenuBoxScreen({super.key});

  @override
  State<MenuBoxScreen> createState() => _MenuBoxScreenState();
}

class _MenuBoxScreenState extends State<MenuBoxScreen> {
  UrunlerModel? _veriler;
  List<Urun> _urunler = [];

  void _loadData() async {
    final dataString = await rootBundle.loadString('assets/files/data.json');
    final dataJson = jsonDecode(dataString);

    _veriler = UrunlerModel.fromJson(dataJson);
    _urunler = _veriler!.urunler;
    setState(() {});
  }

  void _filterData(int id) {
    _urunler = _veriler!.urunler
        .where((verilerEleman) => verilerEleman.kategori == id)
        .toList();

    setState(() {});
  }

  void _resetFilter() {
    _urunler = _veriler!.urunler;
    setState(() {});
  }

  @override
  void initState() {
    _loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _veriler == null
          ? const Center(child: Text('Yükleniyor'))
          : Column(
              children: [
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _resetFilter,
                  child: const Text('Tüm Ürünler'),
                ),
                const SizedBox(height: 10),
                _kategorilerView(),
                const SizedBox(height: 10),
                // Burada Expanded ekliyoruz
                Expanded(child: _urunlerView()),
              ],
            ),
    );
  }

  ListView _urunlerView() {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: _urunler.length,
      itemBuilder: (context, index) {
        final Urun urun = _urunler[index];
        return ListTile(
          leading: Image.network(
            urun.resim,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          title: Text(urun.isim),
        );
      },
      separatorBuilder: (context, index) => const Divider(height: 10),
    );
  }

  Row _kategorilerView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(_veriler!.kategoriler.length, (index) {
        final kategori = _veriler!.kategoriler[index];
        return GestureDetector(
          onTap: () => _filterData(kategori.id),
          child: Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(kategori.isim),
          ),
        );
      }),
    );
  }
}
