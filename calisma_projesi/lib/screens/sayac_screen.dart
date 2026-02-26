import 'package:flutter/material.dart';

class sayac_screen extends StatefulWidget {
  const sayac_screen({super.key});

  @override
  State<sayac_screen> createState() => _SayacScreenState();
}

class _SayacScreenState extends State<sayac_screen> {
  //bı kısımda dart koldlarımızı yazacağız override nin üzerinde.
  // bu kısımda değişkenlerimizi ve fonksiyonlarımızı tanımlayabiliriz

  int _sayac = 0;

  void _sayacArttir() {
    setState(() {
      _sayac++;
    }); // sayac değişkeni değişti ekranı yenile demek  için kullanılır
  }

  void _sayacSifirla() {
    setState(() {
      _sayac = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image(
                  image: AssetImage("assets/image/zikirmatik.jpg"),
                  width: 500,
                  height: 400,
                ),

                Positioned(
                  top: 65,
                  right: 112,
                  child: _sayacText(),
                ), // dışardan erişimi engellemek için private yaparak sadece bu class içinde erişilebilir hale getirdik
                Positioned(
                  bottom: 75,
                  left: 140,
                  child: _artirmaButonu(),
                ), // başına _ koyarak private olmaası sağlandı ve sadece bu class içinde erişilebilir hale getirildi

                Positioned(bottom: 147, right: 93, child: _resetButonu()),
              ],
            ),
            Text(
              "sayac ekranı",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("sayac ekranından çık :) "),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector _resetButonu() {
    return GestureDetector(
      onTap: _sayacSifirla, // fonksiyonu çağırmak için parantez kullanmıyoruz
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape
              .circle, // BorderRadius yerine bunu kullanmak daha garantidir
          border: Border.all(
            // color: const Color.fromARGB(255, 211, 203, 203), // Çerçevenin rengi
            width: 6,
          ),
        ),
      ),
    );
  }

  GestureDetector _artirmaButonu() {
    return GestureDetector(
      onTap: _sayacArttir, // fonksiyonu çağırmak için parantez kullanmıyoruz
      child: Container(
        // buton için container kullanarak şekil verdik
        width: 123,
        height: 123,
        decoration: BoxDecoration(
          //color: const Color.fromARGB(255, 93, 87, 86),
          shape: BoxShape
              .circle, // BorderRadius yerine bunu kullanmak daha garantidir
          border: Border.all(
            // color: const Color.fromARGB(255, 211, 203, 203), // Çerçevenin rengi
            width: 6, // Çerçevenin kalınlığı
          ),
        ),
      ),
    );
  }

  Text _sayacText() {
    return Text(
      '$_sayac', // sayac değişkenini ekrana yazdırmak için
      style: const TextStyle(
        fontFamily: "MyFonts",
        fontSize: 60,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }
}
