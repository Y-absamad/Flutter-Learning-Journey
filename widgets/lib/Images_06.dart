import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('title'),
          backgroundColor: const Color.fromARGB(255, 227, 200, 120),
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Image.asset(
                "images/1.jpg",
                //height: 300,
                //width: 300,
                //fit: BoxFit.fill,
                fit: BoxFit.cover,
              ),
            ),
            Image.network(
              "https://www.siyassa.org.eg/Media/News/2023/10/10/2023-638325472570787508-78.jpg",
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Image.asset(
                "images/1.jpg",
                //height: 300,
                //width: 300,
                //fit: BoxFit.fill,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
