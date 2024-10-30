import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: [
          const Icon(
            Icons.person,
            size: 50,
            color: Colors.black,
            //semanticLabel: 'yousef',
            // fill: 1,
            // weight: 100,
          ),
          IconButton(
            color: Colors.red,
            focusColor: const Color.fromARGB(255, 85, 7, 255),
            iconSize: 50,
            hoverColor: Colors.green,
            highlightColor: Colors.amber,
            onPressed: () {},
            icon: const Icon(Icons.login),
          ),
        ],
      )),
    );
  }
}
