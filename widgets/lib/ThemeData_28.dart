import 'package:flutter/material.dart';

void main() {
  runApp(const MyApptest());
}

class MyApptest extends StatefulWidget {
  const MyApptest({super.key});

  @override
  State<MyApptest> createState() => _MyApptestState();
}

class _MyApptestState extends State<MyApptest> {
  bool isLight = true;
  void changeMode(){
    setState(() {
      isLight = !isLight;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: appBar(changeMode , isLight),
          body: const MyHomePage(),
        ),
      ),
      theme: isLight ? getThemeDataLight() : getThemeDataDark(), 
    );
  }
}

AppBar appBar(VoidCallback changeMode , bool isLight) {
  return AppBar(
    actions: [
     //IconButton(onPressed: () => changeMode() , icon: const Icon(Icons.dark_mode)),
      IconButton(onPressed: () => changeMode(), icon: isLight ? const Icon(Icons.light_mode): const Icon(Icons.dark_mode)),
    ],
  );
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Yousef', style: Theme.of(context).textTheme.bodySmall),
          Text('Ahmed', style: Theme.of(context).textTheme.bodyMedium),
          Text('Mohammed', style: Theme.of(context).textTheme.bodySmall),
          Text('Abd elsamad', style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}

ThemeData getThemeDataLight() => ThemeData(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.blue[100],
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      textTheme: const TextTheme(
        bodySmall: TextStyle(fontSize: 25, color: Colors.black),
        bodyMedium: TextStyle(fontSize: 35, color: Colors.black),

      ),
    );

ThemeData getThemeDataDark() => ThemeData(
      scaffoldBackgroundColor: const Color.fromARGB(192, 72, 71, 71),
      appBarTheme: const AppBarTheme(
        color: Color.fromARGB(221, 111, 109, 109),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      textTheme: const TextTheme(
        bodySmall: TextStyle(fontSize: 25, color: Colors.white),
        bodyMedium: TextStyle(fontSize: 35, color: Colors.white),
      ),
    );
