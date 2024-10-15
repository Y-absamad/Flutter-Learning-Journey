import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          floatingActionButton: FloatingActionButton(onPressed: () {
            Navigator.pop(context);
          },
          backgroundColor: Colors.blue[100],
          child:const Icon(Icons.home),
          ),
          backgroundColor: const Color.fromARGB(255, 4, 75, 188),
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: const Color.fromARGB(82, 2, 197, 227),
            title: const Text(
              'Log in',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          body: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Centers the content vertically
            children: [
              Container(
                width: 266, // Set fixed width for the text field
                padding: const EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                 color: Colors.blue[200],
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    width: 1.5,
                    color:
                        const Color.fromARGB(255, 8, 27, 135), // Border color
                  ),
                ),
                // Email TextField
                child: const TextField(
                  cursorHeight: 20, // Custom cursor height
                  keyboardType: TextInputType
                      .emailAddress, // Input type specific to email
                  textInputAction:
                      TextInputAction.next, // 'Next' button on the keyboard
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Email : ",
                    prefixIcon: Icon(Icons.person), // Icon at the beginning
                  ),
                ),
              ),
              // Password input field with padding
              Container(
                width: 266, // Set fixed width for the text field
                margin:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    width: 1.5,
                    color:
                        const Color.fromARGB(255, 8, 27, 135), // Border color
                  ),
                ),
                child: const TextField(
                  obscureText: true, // Hides the text for password input
                  textInputAction:
                      TextInputAction.done, // 'Done' button on the keyboard
                  decoration: InputDecoration(
                    hintText: "Password: ",
                    prefixIcon: Icon(Icons.lock),
                    border: InputBorder.none,
                  ),
                ),
              ),
              // Login button
              ElevatedButton(
                onPressed: () {
                  // Action for the login button, currently empty
                },
                style: const ButtonStyle(
                  padding: WidgetStatePropertyAll(
                      EdgeInsets.fromLTRB(65, 10, 65, 10)),
                  backgroundColor:  WidgetStatePropertyAll(Color.fromARGB(255, 130, 191, 242)),
                ),
                child: const Icon(
                  Icons.login,
                  size: 27,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
