// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Removes the debug banner from the top-right corner
      home: SimpleProject(),
    );
  }
}

class SimpleProject extends StatelessWidget {
  const SimpleProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    elevation: 50.0, // Creates a shadow under the AppBar
    centerTitle: true, // Centers the title in the AppBar
    backgroundColor: Colors.white,
    title: _buildTitle(),
    leading: _buildMenuButton(),
    actions: _buildActionButtons(),
  );
}

Text _buildTitle() {
  return Text(
    'To Do',
    style: TextStyle(
      fontSize: 30.0,
      color: const Color.fromARGB(255, 1, 9, 22),
    ),
  );
}

IconButton _buildMenuButton() {
  return IconButton(
    onPressed:
        () {}, // Action when the menu icon is pressed (currently does nothing)
    icon: Icon(
      Icons.menu,
      size: 35.0,
      color: const Color.fromARGB(255, 88, 86, 119),
    ),
  );
}

List<Widget> _buildActionButtons() {
  return [
    IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.add,
        size: 35.0,
      ),
    ),
    IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.share,
      ),
    ),
  ];
} 

Center _buildBody() {
  return Center(
    // Centers the child widget horizontally and vertically
    child: Text(
      'Hello, Yousef',
      style: TextStyle(fontSize: 40.0),
    ),
  );
}
