import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<Map<String, dynamic>> users = [
    {'userName': 'Yousef', 'age': 22},
    {'userName': 'Ahmed', 'age': 32},
    {'userName': 'Maher', 'age': 2},
    {'userName': 'Basel', 'age': 42},
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            ...List.generate(
              users.length,
              (index) => Card(
                child: ListTile(
                  title: Text(users[index]['userName']),
                  subtitle: Text(users[index]['age'].toString()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
