import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(10),
            height: 300,
            width: 300,
            color: Colors.blueGrey,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: const Color.fromARGB(255, 12, 188, 219),
                  ),
                ),
                Positioned(
                  left: 0,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: const Color.fromARGB(255, 178, 12, 219),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: const Color.fromARGB(255, 55, 35, 190),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: const Color.fromARGB(255, 78, 219, 12),
                  ),
                ),
                Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    color: const Color.fromARGB(255, 219, 212, 12),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
