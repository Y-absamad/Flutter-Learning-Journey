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
  String? country;
  int? age;
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              children: [
                const Text('Choose your Country' , style: TextStyle(fontSize: 25),),
                RadioListTile(
                  activeColor: Colors.amber,
                  title: const Text('Syria'),
                  subtitle:const Text('data' , style: TextStyle(fontSize: 10),),
                  value: 'Syria',
                  groupValue: country,
                  onChanged: (val) {
                    setState(() {
                      country = val;
                    });
                  },
                ),
                RadioListTile(
                  title: const Text('Egypt'),
                  tileColor: Colors.red,
                  contentPadding: const EdgeInsets.only(left: 25),
                  value: 'Egypt',
                  groupValue: country,
                  onChanged: (val) {
                    setState(() {
                      country = val;
                    });
                  },
                ),
                RadioListTile(
                  title: const Text('Jordan'),
                  value: 'Jordan',
                  groupValue: country,
                  onChanged: (val) {
                    setState(() {
                      country = val;
                    });
                  },
                ),
                const Text('Choose your Age' , style: TextStyle(fontSize: 25),),
                RadioListTile(
                  activeColor: Colors.amber,
                  title: const Text('10 to 22'),
                  subtitle:const Text('data' , style: TextStyle(fontSize: 10),),
                  value: 10,
                  groupValue: age,
                  onChanged: (val) {
                    setState(() {
                      age = val;
                    });
                  },
                ),
                RadioListTile(
                  title: const Text('23 to 40'),
                  value: 40,
                  groupValue: age,
                  onChanged: (val) {
                    setState(() {
                      age = val;
                    });
                  },
                ),
                RadioListTile(
                  title: const Text('41 to 60'),
                  value: 60,
                  groupValue: age,
                  onChanged: (val) {
                    setState(() {
                      age = val;
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
