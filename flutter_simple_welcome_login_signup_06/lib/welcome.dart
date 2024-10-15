import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          
          backgroundColor: const Color.fromARGB(255, 4, 75, 188),
          appBar: AppBar(
            title: const Text(
              'Welcome',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            backgroundColor: const Color.fromARGB(82, 2, 197, 227),
            centerTitle: true,
          ),
          body: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Color.fromARGB(255, 130, 191, 242)),
                      padding: WidgetStatePropertyAll(
                          EdgeInsets.symmetric(horizontal: 80, vertical: 8))),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Color.fromARGB(255, 130, 191, 242)),
                      padding: WidgetStatePropertyAll(
                          EdgeInsets.symmetric(horizontal: 74, vertical: 8))),
                  child: const Text(
                    'Signup',
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
