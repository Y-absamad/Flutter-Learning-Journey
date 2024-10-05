import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Container(
            margin: const EdgeInsets.all(100),
            alignment: Alignment.center,
            height: 400,
            width: 300,
            color: Colors.green,
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 200,
                  color: const Color.fromARGB(255, 12, 188, 219),
                ),
                Container(
                  height: 100,
                  width: 150,
                  color: const Color.fromARGB(255, 178, 12, 219),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: const Color.fromARGB(255, 219, 212, 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
