// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: _buildAppBar(),// Builds the app bar
        body: _buildBody(),// Builds the body of the scaffold
      ),
    );
  }
}

// Function to build the app bar
AppBar _buildAppBar() {
  return AppBar(
    centerTitle: true,
    backgroundColor: const Color.fromARGB(255, 10, 207, 197),
    title: _bulidTitle(), // Title widget
  );
}

// Function to build the title in the app bar
Text _bulidTitle() {
  return Text(
    'Container & Box decoration 02',
    style: TextStyle(
      fontSize: 25,
      color: Colors.black,
      fontWeight: FontWeight.bold, // Bold font weight
    ),
  );
}

// Function to build the body of the scaffold
Container _buildBody() {
  return Container(
    child: _text(),

    //color: Colors.amber,
    margin: EdgeInsets.fromLTRB(66, 155, 66, 111), // Custom margin
    //margin: EdgeInsets.symmetric(vertical: 111 , horizontal: 66),
    //margin: EdgeInsets.all(55),
    padding: EdgeInsets.all(20), // Padding inside the container
    height: 250,
    width: 250,
    alignment: Alignment.center, // Aligns content in the center
    //alignment: Alignment.topCenter,
    //alignment: Alignment.topLeft,
    //transform: Matrix4.rotationZ(0.2),

    decoration: _boxDecoration(),
  );
}

// Function to build the text inside the container
Text _text() {
  const String textContent = "Welcome";
  return Text(
    textContent,
    style: TextStyle(
      fontSize: 30,
      color: Colors.black,
      fontWeight: FontWeight.w900, // Extra bold font
      //backgroundColor: const Color.fromARGB(255, 154, 236, 162),
    ),
  );
}

// Function to define the box decoration for the container
BoxDecoration _boxDecoration() {
  return BoxDecoration(
    color: const Color.fromARGB(255, 180, 212, 228), // Background color
    border: Border.all(
        color: const Color.fromARGB(255, 245, 153, 5), // Border color
        width: 6),
    borderRadius: BorderRadius.circular(25), //// Rounded corners with radius 25
    //shape: BoxShape.circle,
  );
}
