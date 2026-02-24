import 'package:flutter/material.dart';
import 'package:calisma_projesi/screeans/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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

            Image(
              image: AssetImage("assets/image/firuzan.jpeg"),
              width: 500,
              height: 400,

              //opacity: AlwaysStoppedAnimation(0.4),
            ),

            ElevatedButton(
              onPressed: () {
                print("butona tıklandı"); // konsola verir
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 30, 142, 233),
              ), // buton arka plan rengini düzenleme
              child: Text(
                "Tıkla",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: const Color.fromARGB(255, 179, 11, 11),
                ),
              ),
            ),
            TextButton(
              // text butonun arka planı olmaz, sadece yazı olur
              onPressed: () {
                print("text butona tıklandı");
              },
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 210, 253, 40),
              ), // text butonun arka plan rengini düzenleme
              child: Text("Text butona tıkla"),
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
