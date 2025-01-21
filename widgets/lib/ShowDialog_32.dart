import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        showDialog(
          barrierDismissible: false,
          barrierColor: Colors.black45,
          context: context,
          builder: (context) {
            return AlertDialog(
              backgroundColor: Colors.lightGreenAccent,
              elevation: 20,
              shadowColor: Colors.red,
              title: const Center(child: Text('404 Error')),
              content: const Text('Please try later'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); 
                  },
                  child: const Text('Close' , style: TextStyle(color: Colors.black),),
                ),
              ],
            );
          },
        );
      },
      color: Colors.red,
      textColor: Colors.white,
      child: const Text('Show Alert'),
    );
  }
}

