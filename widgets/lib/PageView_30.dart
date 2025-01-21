import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;
  List<Widget> listWidgets = [
    const Text(
      'Page 1',
      style: TextStyle(fontSize: 25),
    ),
    const Text(
      'Page 2',
      style: TextStyle(fontSize: 25),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          currentIndex: selectedIndex,
          backgroundColor: Colors.indigo,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          selectedLabelStyle:
              const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          elevation: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Sttings"),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            listWidgets[selectedIndex],
            Center(
              child: Container(
                height: 500,
                width: 200,
                color: Colors.amber,
                child: PageView(
                  //reverse: true,
                  //physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (value) {
                    setState(() {
                      selectedIndex = value;
                    });
                  },
                  children: [
                    Center(child: listWidgets[selectedIndex]),
                    Center(child: listWidgets[selectedIndex]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
