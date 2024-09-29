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
        backgroundColor: const Color.fromARGB(252, 234, 238, 239),
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }
}
class AppColors {
  static const Color appBarBackground = Color.fromARGB(255, 133, 247, 247);
  static const Color appBarTitleBackground = Color.fromARGB(57, 255, 32, 7);
  static const Color titleColor = Color.fromARGB(255, 25, 26, 25);
  static const Color containerBackground = Color.fromARGB(255, 45, 166, 207);
  static const Color rowContainerBackground = Color.fromARGB(255, 128, 188, 193);
  static const Color textHighlight = Color.fromARGB(255, 239, 188, 61);
  static const Color rowTextHighlight = Color.fromARGB(255, 246, 48, 4);
}
AppBar _buildAppBar() {
  return AppBar(
    centerTitle: true,
    backgroundColor: AppColors.appBarBackground,
    title: _bulidTitle(),
    leading: _buildMenuButton(),
  );
}

Text _bulidTitle() {
  return const Text(
    'Practical on Rows and Columns',
    style: TextStyle(
      color: AppColors.titleColor,
      fontWeight: FontWeight.bold,
      fontSize: 20,
      backgroundColor: AppColors.appBarTitleBackground,
    ),
  );
}

IconButton _buildMenuButton() {
  return IconButton(
    onPressed:
        () {}, // Action when the menu icon is pressed (currently does nothing)
    icon: const Icon(
      Icons.menu,
      size: 35.0,
      color: Colors.black,
    ),
  );
}

SingleChildScrollView _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: [
        _buildContainer('Yousef', AppColors.textHighlight),
        _buildRows(),
        _buildContainer('Ahmed', AppColors.textHighlight),
      ],
    ),
  );
}

Container _buildContainer(String title, Color textColor) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 22 ,vertical: 10),
    alignment: Alignment.center,
    height: 300,
    width: 460,
    decoration: _boxDecoration(AppColors.containerBackground),
    child: _buildText(title, textColor),
  );
}

BoxDecoration _boxDecoration(color) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(20),
  );
}

Text _buildText(String title, Color color) {
  return Text(
    title,
    style: TextStyle(
      fontSize: 50,
      color: color,
      fontWeight: FontWeight.bold,
    ),
  );
}

SingleChildScrollView _buildRows() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        _buildRowContainer('A'),
        _buildRowContainer('B'),
        _buildRowContainer('S'),
        _buildRowContainer('A'),
        _buildRowContainer('M'),
        _buildRowContainer('A'),
        _buildRowContainer('D'),
      ],
    ),
  );
}

Container _buildRowContainer(String title) {
  return Container(
    margin: const EdgeInsets.fromLTRB(20, 20, 0, 20),
    alignment: Alignment.center,
    height: 100,
    width: 100,
    decoration: _boxDecoration(AppColors.rowContainerBackground),
    child: _buildText(title, AppColors.rowTextHighlight),
  );
}
