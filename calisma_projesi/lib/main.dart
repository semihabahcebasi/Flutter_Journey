import 'package:calisma_projesi/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const uygulamam());
}

class uygulamam extends StatelessWidget {
  const uygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // sol üstteki debug yazısını kaldırmak için
      theme: ThemeData(fontFamily: "MyFonts"),
      home: HomeScreen(),
    );
  }

  Container compenentUse() {
    return Container(
      //width: 100,
      //height: 100,
      // padding: EdgeInsets.all(
      //   20,
      //  ), //-->container içindeki öğe ile container kenarı arasındaki boşluk
      padding: EdgeInsets.symmetric(
        vertical: 10,
      ), //-->container içindeki öğe ile container kenarı arasındaki boşluk

      margin: EdgeInsets.all(
        50,
      ), //-->container ile diğer öğeler arasındaki boşluk
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 243, 33, 33),
        borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
        border: Border.all(
          color: const Color.fromARGB(255, 255, 255, 255),
          width: 3,
        ), //-->container kenarına çizgi eklemek için
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 193, 152, 152),
            Color.fromARGB(255, 144, 5, 84),
          ],
          begin: Alignment.topLeft, // gradient başlangıç noktası
          end: Alignment.bottomRight, // gradient bitiş noktası
        ),

        boxShadow: [
          BoxShadow(
            color: Colors.red.shade500,
            blurRadius: 10,
            spreadRadius: 5,
            offset: Offset(0, 10), // gölgenin konumu (x, y)
          ),
        ], //-->container gölgelendirme eklemek için
        // borderRadius: BorderRadius.circular(20),
        //borderRadius:BorderRadius.horizontal(left:Radius.circular(20))  ->> sadece sol köşeleri yuvarlamak için
      ), //-->container köşelerini yuvarlamak için
      alignment: Alignment.center, //-->container içindeki öğeyi ortalamak için
      child: Text(
        "hikayemiz",
        style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white),
      ),
    );
  }
}
