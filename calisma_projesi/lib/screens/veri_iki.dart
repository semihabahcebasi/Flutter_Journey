import 'package:flutter/material.dart';

class veri_iki extends StatefulWidget {
  const veri_iki({super.key});

  @override
  State<veri_iki> createState() => _VeriIkiState();
}

class _VeriIkiState extends State<veri_iki> {
  List elemanlar = [
    "elma",
    "armut",
    "muz",
    "çilek",
    "karpuz",
    "kavun",
    "portakal",
    "mandalina",
    "greyfurt",
    "limon",
    "nar",
    "üzüm",
    "ananas",
    "avokado",
    "kivi",
    "çilek",
    "karpuz",
    "kavun",
    "portakal",
    "mandalina",
  ];

  //eğer fazla sayıda eleman varsa binlerce o zaman listviewbuilder kullanmak daha mantıklı olurdu.
  // listview.builder da tek tek elemanları oluşturmaz sadece ekranda gözüken elemanları oluşturur
  /// ve bu sayede performans artar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              //listviev.builderin farklı biri de seperatorlu olanıdır
              itemCount: elemanlar.length,
              itemBuilder: (context, index) => ListTile(
                title: Text("eleman: ${index + 1}"),
                subtitle: Text(elemanlar[index]),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                ), // satır sonuna gidiş ikonu ekler
                tileColor: Color.fromARGB(255, 155, 133, 159),
              ),
              separatorBuilder: (context, index) =>
                  const Divider(), // elemanlar arasına çizgi ekler
            ),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("sayac ekranından çık :) "),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 215, 218, 26),
            ),
          ),
        ],

        /* ListView(
        children: [
          // Geri dönme butonu
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context); // Ana ekrana döndürür
              },
              icon: const Icon(Icons.arrow_back),
              label: const Text("Ana Ekran'a Dön"),
            ),
          ),

          ...elemanlar
              .map(
                (e) => Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  color: const Color.fromARGB(255, 91, 21, 103),
                  child: Text(
                    e,
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              )
              .toList(),
        ],
      ),*/
      ),
    );
  }
}
