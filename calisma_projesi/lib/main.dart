import 'package:flutter/material.dart';

void main() {
  runApp(uygulamam());
}

class uygulamam extends StatelessWidget {
  const uygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "MyFonts"),
      home: Scaffold(
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
                .spaceEvenly, //-->>center ile->ögelerin dikeydede ortalanması için
            //aralarındaki boşluk hizalaması için spaceEvenly, spaceAround, spaceBetween gibi seçenekler var
            //crossAxisAlignment: CrossAxisAlignment.end,  //-->>ögelerin yatayda ortalanması ya da diğer hareketleri için
            children: [
              Text(
                "--",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: const Color.fromARGB(255, 97, 0, 50),
                ),
              ),

              Image(
                image: AssetImage("assets/image/foto.png"),
                width: 500,
                height: 400,

                //opacity: AlwaysStoppedAnimation(0.4),
              ),

              Text(
                "--",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: const Color.fromARGB(255, 97, 0, 50),
                ),
              ),

              SizedBox(height: 120), //-->öğeler arasında boşluk bırakmak için
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
      ),
    );
  }
}
