import 'package:flutter/material.dart';

void main() {
  runApp(const uygulamam());
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
                .center, //-->>center ile->ögelerin dikeydede ortalanması için
            //aralarındaki boşluk hizalaması için spaceEvenly, spaceAround, spaceBetween gibi seçenekler var
            //crossAxisAlignment: CrossAxisAlignment.end,  //-->>ögelerin yatayda ortalanması ya da diğer hareketleri için
            children: [
              Container(
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
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(20),
                  ),
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
                alignment: Alignment
                    .center, //-->container içindeki öğeyi ortalamak için
                child: Text(
                  "hikayemiz",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),

              // image padding vs düzenlemesi yoktur . bunun için dışardan image i padding içine almak gerekir
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Image.asset("assets/image/foto.png", width: 50),
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
      ),
    );
  }
}
