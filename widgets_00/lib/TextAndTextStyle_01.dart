
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    ),
  );
}

AppBar _buildAppBar() {
  return AppBar(
    centerTitle: true,
    backgroundColor: const Color.fromARGB(255, 151, 221, 218),
    title: _bulidTitle(),
  );
}

Text _bulidTitle() {
  return Text(
    'Text & TextStyle_01',
    style: TextStyle(
      fontSize: 30,
      color: Colors.black,
    ),
  );
}

Text _buildBody(){
  const String textContent =
      "Welcome to the present, we're running a real nation. "
      "The common baseline that should be aligned between this text span and "
      "its parent text span, or, for the root text spans, with the line box.";
  return Text(
    textContent,
    maxLines: 5,
    overflow: TextOverflow.ellipsis,
    //overflow: TextOverflow.fade,
    textDirection: TextDirection.ltr,
    //textAlign: TextAlign.left,
    style: _buildTextStyle(),
  );
}


TextStyle _buildTextStyle(){
  return TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
      color: const Color.fromARGB(255, 253, 251, 249),
      backgroundColor: const Color.fromARGB(255, 242, 77, 16),
      decoration: TextDecoration.underline,
      //decoration: TextDecoration.lineThrough,
      decorationColor: const Color.fromARGB(255, 13, 13, 13),
      height: 2,
      letterSpacing: 5,
      wordSpacing: 10,
    );
}