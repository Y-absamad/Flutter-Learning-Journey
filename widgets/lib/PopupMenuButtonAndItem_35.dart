import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:widgets/SnackBar_33.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            PopupMenuButton(
              icon: const Icon(Icons.menu),
              iconColor: Colors.black,
              iconSize: 30,
              color: Colors.amber,
              onSelected: (value) {
                print(value);
              },
              onOpened: () {
                print('Open');
              },
              onCanceled: () {
                print('Cancel');
              },
              itemBuilder: (context) => [
                 PopupMenuItem(
                  onTap: () {
                    print('one');
                  },
                  value: 1,
                  child: const Align(
                    alignment: Alignment.topRight,
                    child: Text('الرسائل المميزه بنجمه'),
                  ),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text('المساعده والملاحظات'),
                  ),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(' السجل '),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
