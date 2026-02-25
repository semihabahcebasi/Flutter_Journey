import 'package:flutter/material.dart';

class SayacScreen extends StatelessWidget {
  const SayacScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image(
                  image: AssetImage("assets/image/zikirmatik.jpg"),
                  width: 500,
                  height: 400,
                ),

                Positioned(
                  top: 65,
                  right: 112,
                  child: Text(
                    '50',
                    style: TextStyle(
                      fontFamily: "MyFonts",
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
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
    ;
  }
}
