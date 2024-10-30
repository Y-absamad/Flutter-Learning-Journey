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
        body: Center(
          child: MaterialButton(
            onPressed: () {},
            onLongPress: (){},
            color: Colors.black,
            textColor: Colors.white,
            height: 100,
            minWidth: 210,
            hoverColor: Colors.amber,
            splashColor: Colors.red,
            //highlightColor: Colors.purple,
            
            elevation: 10,
            child: const Text('Button'),
          ),
        ),
      ),
    );
  }
}
