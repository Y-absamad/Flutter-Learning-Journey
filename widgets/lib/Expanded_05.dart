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
        appBar: _buildAppBar(),
        body: _buildBodyUsingRow(), ///or [_buildBodyUsingColum]
      ),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    centerTitle: true,
    backgroundColor: const Color.fromARGB(253, 223, 17, 17),
    leading: _iconButton(),
    title: _buildText('title'),
  );
}

IconButton _iconButton() {
  return IconButton(
    onPressed: () {},
    icon: const Icon(Icons.add_home_work),
  );
}

Text _buildText(String title) {
  return Text(
    title,
    style: const TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
  );
}

Container _buildBodyUsingRow() {
  return Container(
    color: Colors.cyanAccent,
    width: double.infinity,
    child: Column(
      children: [
        _buildColoredBox('A', Colors.greenAccent, 100, flex: 1),
        _buildColoredBox('B', const Color.fromARGB(255, 105, 116, 240), 100,
            flex: 2),
        _buildColoredBox('C', const Color.fromARGB(255, 206, 240, 105), 100,
            flex: 1),
      ],
    ),
  );
}

Container _buildBodyUsingColum() {
  return Container(
    color: Colors.cyanAccent,
    width: double.infinity,
    child: Column(
      children: [
        _buildColoredBox('A', Colors.greenAccent, 100, flex: 0),
        _buildColoredBox('B', const Color.fromARGB(255, 105, 116, 240), 100,
            flex: 2),
        _buildColoredBox('C', const Color.fromARGB(255, 206, 240, 105), 100,
            flex: 1),
      ],
    ),
  );
}

Widget _buildColoredBox(String text, Color color, double size,
    {required int flex}) {
  return Expanded(
    flex: flex,
    child: Container(
      alignment: Alignment.center,
      width: size,
      height: size,
      color: color,
      child: _buildText(text),
    ),
  );
}
