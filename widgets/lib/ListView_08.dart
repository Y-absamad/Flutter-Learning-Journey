import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          height: 350,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                width: 300,
                color: Colors.lightBlue,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                width: 300,
                color: const Color.fromARGB(255, 244, 79, 3),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                width: 300,
                color: const Color.fromARGB(255, 3, 244, 67),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                width: 300,
                color: const Color.fromARGB(255, 196, 3, 244),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
