import 'package:calisma_projesi/screens/sayac_screen.dart';
import 'package:calisma_projesi/screens/veri_iki.dart';
import 'package:flutter/material.dart';
import 'package:calisma_projesi/screens/second_screen.dart';
import 'package:calisma_projesi/screens/veri_listeleme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ilk uygulamam',
          style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 144, 5, 84),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment
              .center, //-->>center ile->ögelerin dikeydede ortalanması için
          //aralarındaki boşluk hizalaması için spaceEvenly, spaceAround, spaceBetween gibi seçenekler var
          //crossAxisAlignment: CrossAxisAlignment.end,  //-->>ögelerin yatayda ortalanması ya da diğer hareketleri için
          children: [
            // image padding vs düzenlemesi yoktur . bunun için dışardan image i padding içine almak gerekir
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset("assets/image/foto.png", width: 50),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
              child: Text("ikinci ekrana git"),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => sayac_screen()),
                );
              },
              child: Text("sayac ekranına git"),
            ),

            Image(
              image: AssetImage("assets/image/firuzan.jpeg"),
              width: 500,
              height: 400,

              //opacity: AlwaysStoppedAnimation(0.4),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VeriListeleme()),
                );
              },
              child: Text(
                "Veri listeleme ekranına git",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: const Color.fromARGB(255, 179, 11, 11),
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => veri_iki()),
                );
              },
              child: Text(
                "Veri listeleme 2 ekranına git",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: const Color.fromARGB(255, 179, 11, 11),
                ),
              ),
            ),

            Icon(
              Icons.favorite_outline,
              color: Colors.pink,
              size: 50,
            ), //-->icon eklemek için
            //Icon(Icons.featured_play_list, color: Colors.purple, size: 50),
            SizedBox(height: 5), //-->öğeler arasında boşluk bırakmak için
            Text(
              "Firuzan",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.normal,
                color: const Color.fromARGB(255, 97, 0, 50),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 235, 193, 217),
    );
  }
}
