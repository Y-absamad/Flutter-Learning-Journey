// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
        backgroundColor: const Color.fromARGB(212, 2, 80, 111),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('images/yousef.jpg'),
              ),
              Text(
                'Yousef Ahmed',
                style: TextStyle(
                  fontFamily: 'RobotoSlab',
                  fontSize: 35,
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white70,
                ),
              ),
              Text(
                'CS student',
                style: TextStyle(
                  fontFamily: 'RobotoSlab',
                  fontSize: 20,
                  color: Colors.white70,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(
                width: 200,
                height: 20,
                child: Divider(),
              ),
              Card(
                color: const Color.fromARGB(255, 139, 158, 181),
                margin: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                  title: Text(
                    '+20 1012345678',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: const Color.fromARGB(255, 7, 7, 7),
                    ),
                  ),
                ),
              ),
              Card(
                color: const Color.fromARGB(255, 139, 158, 181),
                margin: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(Icons.email,
                  color: Colors.black,
                  ),
                  title: Text(
                    'yousef.ahmed.0402@gmail.com',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
