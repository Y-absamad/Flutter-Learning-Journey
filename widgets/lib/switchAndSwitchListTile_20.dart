import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool status = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Switch'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
                activeColor: Colors.white,
                activeTrackColor: Colors.blue,
                inactiveThumbColor: Colors.white,
                inactiveTrackColor: Colors.black,
                value: status,
                onChanged: (val) {
                  setState(() {
                    status = !status;
                  });
                }),
            const SizedBox(height: 100),
            SizedBox(
              width: 300,
              child: SwitchListTile(
                secondary:const Icon(Icons.data_array),
                  title: const Text('data'),
                  tileColor: Colors.brown,
                  activeColor: Colors.blueGrey,
                  activeTrackColor: Colors.blue,
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: Colors.black,
                  value: status,
                  onChanged: (val) {
                    setState(() {
                      status = !status;
                    });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
