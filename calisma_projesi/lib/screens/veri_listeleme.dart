import 'package:flutter/material.dart';

class VeriListeleme extends StatefulWidget {
  const VeriListeleme({super.key});

  @override
  State<VeriListeleme> createState() => _VeriListelemeState();
}

class _VeriListelemeState extends State<VeriListeleme> {
  // bu kısımda değişkenlerimizi ve fonksiyonlarımızı tanımlayabiliriz

  List elemanlar = ["elma", "armut", "muz", "çilek"];
  List sayilar = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // bu widgeti hangi widgetin içine koyarsak o widget scrollable olur
        child: Column(
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

            ...List.generate(
              sayilar.length,
              (index) => Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                color: const Color.fromARGB(255, 91, 21, 103),
                child: Text(
                  sayilar[index].toString(),
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
