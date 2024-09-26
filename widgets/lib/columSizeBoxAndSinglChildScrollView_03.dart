// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.amber,
    title: _bulidTitle(),
    leading: _buildMenuButton(),
  );
}

Text _bulidTitle() {
  return Text(
    'Colum & sizeBox & SinglChildScrollView',
    style: TextStyle(
      color: const Color.fromARGB(255, 25, 26, 25),
      fontWeight: FontWeight.bold,
      fontSize: 20,
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

SingleChildScrollView _buildBody() {
  return SingleChildScrollView(
    // padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
    child: Column(
      //mainAxisAlignment: MainAxisAlignment.end,
      //mainAxisAlignment: MainAxisAlignment.center,
      //mainAxisAlignment: MainAxisAlignment.spaceAround,

      //crossAxisAlignment: CrossAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.end,
      //crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _container1(),
        _sizedBox(400),
        _container2(),
        _container3(),
      ],
    ),
  );
}


Container _container1() {
  return Container(
    alignment: Alignment.center,
    //color: Colors.deepPurpleAccent,
    //margin: EdgeInsets.all(20),
    //padding: EdgeInsets.symmetric(vertical: 20, horizontal: 35),
    height: 100,
    width: 100, // becaus crossAxisAlignment
    decoration: _boxDecoration(Colors.deepPurpleAccent),
    child: _text1('1'),
  );
}

Container _container2() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 35),

    height: 100,
    width: 100,

    decoration: _boxDecoration(Color.fromARGB(255, 16, 127, 192)),
    child: _text1('2'),
  );
}

Container _container3() {
  return Container(
    margin: EdgeInsets.fromLTRB(0, 400, 0, 200),
    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 35), // or alignment: Alignment.center,
    

    height: 100,
    width: 100,

    decoration: _boxDecoration(Color.fromARGB(255, 19, 205, 219)),
    child: _text1('3'),
  );
}

BoxDecoration _boxDecoration(color) {
  return BoxDecoration(
      color: color,
      border:
          Border.all(color: const Color.fromARGB(255, 17, 18, 18), width: 4),
      borderRadius: BorderRadius.circular(25));
}

Text _text1(String s) {
  return Text(
    s,
    style: TextStyle(
      fontSize: 35,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  );
}

SizedBox _sizedBox(double x) {
  return SizedBox(
    height: x,
  );
}
