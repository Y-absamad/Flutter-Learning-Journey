import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 98, 112, 109),
        appBar: AppBar(
          // The title is centered inside the AppBar
          title: Center(
            // Transform widget is used to adjust the position of the title
            child: Transform.translate(
               // Offset to move the title 15 pixels up vertically
              offset: Offset(0, -15),
              // The title text is displayed as 'بسم الله'
              child: Text(
                'بسم الله',
                style: TextStyle(
                  color: const Color.fromARGB(255, 240, 226, 204),
                  fontSize: 50.5,
                ),
              ),
            ),
          ),
           // Setting the background color of the AppBar
          backgroundColor: const Color.fromARGB(255, 41, 81, 73),
        ),
        
         // The body of the Scaffold, containing a centered image
        body: Center(
          child: Image(
            // Loading an image from the assets directory
            image: AssetImage('images/02.png'),
          ),
        ),
      ),
    ),
  );
}



