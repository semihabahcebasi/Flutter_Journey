import 'package:calisma_projesi/models/elemanlar_model.dart';
import 'package:flutter/material.dart';

class second_screen extends StatefulWidget {
  const second_screen({super.key});

  @override
  State<second_screen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<second_screen> {
  /*List elemanlar = [

    {'isim': 'bölüm 1', 'aciklama': 'bölüm 1 açıklama'},
    {'isim': 'bölüm 2', 'aciklama': 'bölüm 2 açıklama'},
    {'isim': 'bölüm 3', 'aciklama': 'bölüm 3 açıklama'},
    {'isim': 'bölüm 4', 'aciklama': 'bölüm 4 açıklama'},
    {'isim': 'bölüm 5', 'aciklama': 'bölüm 5 açıklama'},
  ];*/
  // model yapısı kullanarak yapalım
  List<ElemanlarModel> elemanlar = [
    ElemanlarModel(title: "Semiha ", subtitle: "Bahçebaşı"),
    ElemanlarModel(title: "bölüm 2", subtitle: "bölüm 2 açıklama"),
    ElemanlarModel(title: "bölüm 3", subtitle: "bölüm 3 açıklama"),
    ElemanlarModel(title: "bölüm 4", subtitle: "bölüm 4 açıklama"),
    ElemanlarModel(title: "bölüm 5", subtitle: "bölüm 5 açıklama"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => ListTile(
                title: Text(elemanlar[index].title),
                subtitle: Text(elemanlar[index].subtitle),
                tileColor: Color.fromARGB(255, 155, 133, 159),
              ),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: elemanlar.length,
            ),
          ),
        ],
      ),
    );
  }
}
