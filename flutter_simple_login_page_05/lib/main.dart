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
        body: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Centers the content vertically
          children: [
            Container(
              width: 266, // Set fixed width for the text field
              padding: const EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 199, 206, 249),
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  width: 1.5,
                  color: const Color.fromARGB(255, 8, 27, 135), // Border color
                ),
              ),
              // Email TextField
              child: const TextField(
                cursorHeight: 20, // Custom cursor height
                keyboardType:
                    TextInputType.emailAddress, // Input type specific to email
                textInputAction:
                    TextInputAction.next, // 'Next' button on the keyboard
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Email : ",
                  prefixIcon: Icon(Icons.person),// Icon at the beginning
                ),
              ),
            ),
            // Password input field with padding
            const Padding(
              padding: EdgeInsets.fromLTRB(62, 27, 60, 27),// Space around the TextField
              child: TextField(
                obscureText: true, // Hides the text for password input
                textInputAction: TextInputAction.done, // 'Done' button on the keyboard
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 199, 206, 249), // Background color
                    filled: true, // Enables the background color
                    hintText: "Password: ",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)))),
              ),
            ),
             // Login button
            ElevatedButton(
              onPressed: () {
                // Action for the login button, currently empty
              },
              style: const ButtonStyle(
                padding:
                    WidgetStatePropertyAll(EdgeInsets.fromLTRB(65, 10, 65, 10)),
                backgroundColor:
                    WidgetStatePropertyAll(Color.fromARGB(255, 199, 206, 249)),
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
    );
  }
}
