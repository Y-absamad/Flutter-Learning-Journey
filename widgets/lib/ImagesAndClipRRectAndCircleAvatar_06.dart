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
        appBar: AppBar(
          title: const Text('title'),
          backgroundColor: const Color.fromARGB(255, 227, 200, 120),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // First container displaying a local image (1.jpg)
                margin: const EdgeInsets.only(bottom: 35), //Adds margin below the image
                child: Image.asset(
                  "images/1.jpg", // Path to local asset image
                  height: 500,
                  width: 400,
                  fit: BoxFit.cover, // Scales the image to fill its container
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 35),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                     // URL of the image from the network
                    "https://www.siyassa.org.eg/Media/News/2023/10/10/2023-638325472570787508-78.jpg",
                  ),
                ),
              ),
              const CircleAvatar(
                backgroundImage: AssetImage('images/1.jpg'),
                radius: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
