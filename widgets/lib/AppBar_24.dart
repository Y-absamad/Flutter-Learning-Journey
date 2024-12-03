import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(onPressed: (){}, icon: const Icon(Icons.person ,color: Colors.white,)),
            title:const Text('Appbar'),
            centerTitle: true,
            titleTextStyle:const TextStyle(fontSize: 25, fontWeight: FontWeight.bold ),
            backgroundColor: Colors.black,
            elevation: 20.0,
            shadowColor: Colors.red,
            actions: [
              IconButton(onPressed: (){}, icon:const Icon(Icons.list)),
              IconButton(onPressed: (){}, icon:const Icon(Icons.grid_view)),
              IconButton(onPressed: (){}, icon:const Icon(Icons.outbond)),
            ],
          ),
        ),
      ),
    );
  }
}