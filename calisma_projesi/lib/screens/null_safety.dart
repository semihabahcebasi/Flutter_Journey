import 'package:flutter/material.dart';

class null_safety extends StatefulWidget {
  const null_safety({super.key});

  @override
  State<null_safety> createState() => _null_safetyState();
}

class _null_safetyState extends State<null_safety> {
  List? veriler = [
    "eleman1",
    "eleman2",
  ]; // null olabilir demek için ? kullanılır

  @override
  Widget build(BuildContext context) {
    veriler ??= [
      "bonus eleman",
    ]; // null ise "bonus eleman" ekle demek için ??= kullanılır
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            //yada şöyle bir kullanım da var
            veriler == null
                ? Text("Liste boş")
                : Text(veriler?[0] ?? "Liste boş"),

            //Text(veriler?[0] ?? "Liste boş"),
          ], // null ise "Liste boş" yazsın demek için ?? kullanılır])),
        ),
      ),
    );
  }
}
