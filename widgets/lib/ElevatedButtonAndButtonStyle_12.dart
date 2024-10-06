import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          // Centers the content in the middle of the screen
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Centers children vertically
            children: [
              // First button with padding around it
              Padding(
                padding: const EdgeInsets.all(15),
                child: ElevatedButton(
                  onPressed: () {}, // Empty function for onPressed event
                  style: const ButtonStyle(
                    padding: WidgetStatePropertyAll(
                        EdgeInsets.all(20)), // Padding inside the button
                    backgroundColor: WidgetStatePropertyAll(Colors
                        .deepOrangeAccent), // Background color of the button
                    foregroundColor: WidgetStatePropertyAll(
                        Colors.tealAccent), //Text/icon color on the button
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
                  ),
                  child: const Text(
                    'Click',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ElevatedButton(
                // Second button without padding
                onPressed: () {},
                style: const ButtonStyle(
                  padding: WidgetStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor:
                      WidgetStatePropertyAll(Color.fromARGB(255, 89, 255, 64)),
                  foregroundColor: WidgetStatePropertyAll(
                      Color.fromARGB(255, 100, 113, 255)),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                child: const Text(
                  'Okey',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      padding: WidgetStatePropertyAll(EdgeInsets.all(20)),
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.pinkAccent),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(5)))) // Slightly rounded corners
                      ),
                  child: const Icon(
                    Icons.menu,
                    size: 40,
                    color: Color.fromARGB(255, 7, 255, 234),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Icon(
                  Icons.facebook,
                  size: 60,
                  color: Color.fromARGB(255, 6, 130, 231),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
