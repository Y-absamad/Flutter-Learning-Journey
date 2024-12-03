import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool status = false;
  bool person = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              children: [
                const Text('Choose', style: TextStyle(fontSize: 30)),
                Checkbox(
                  value: status,
                  onChanged: (val) {
                    setState(() {
                      status = val!;
                    });
                  },
                ),
                CheckboxListTile(
                  title:const Text('Yousef?'),
                  value: person,
                  onChanged: (val) {
                    setState(() {
                      person = val!;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
