import 'package:flutter/material.dart';

//import 'package:calisma_projesi/screeans/home_screen.dart';
//eğer bu importu kullanmıyorsak silmek daha iyi olur.
//gereksiz importlar uygulamanın performansını etkileyebilir
// zaten turuncu renkte uyarı verir.

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              "ikinci ekran",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("ikinci ekrandan kaçış :) "),
            ),
          ],
        ),
      ),
    );
  }
}
