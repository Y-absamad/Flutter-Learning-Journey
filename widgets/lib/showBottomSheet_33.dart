import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: scaffoldKey,
        body: Center(
          child: MaterialButton(
            onPressed: () {
              scaffoldKey.currentState!
                  .showBottomSheet((context) => const MyWidget());
            },
            color: Colors.red,
            textColor: Colors.white,
            child: const Text(
              'Choose Iamge',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}



class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      color: Colors.black54,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Custom(textIcon: 'Camera', iconData: Icons.camera_alt),
          Custom(textIcon: 'Link', iconData: Icons.link),
          Custom(textIcon: 'Folder', iconData: Icons.folder_open),
        ],
      ),
    );
  }
}

class Custom extends StatelessWidget {
  const Custom({super.key, required this.textIcon, required this.iconData});
  final String textIcon;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: Icon(iconData, size: 50, color: Colors.white),
            ),
            Text(
              textIcon,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
