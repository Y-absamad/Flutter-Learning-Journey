import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Wrap(
            children: [
              Container(width: 100,height: 100,color: Colors.pinkAccent,),
              Container(width: 100,height: 100,color: const Color.fromARGB(255, 64, 112, 255),),
              Container(width: 100,height: 100,color: const Color.fromARGB(255, 24, 23, 23),),
              Container(width: 100,height: 100,color: const Color.fromARGB(255, 194, 126, 149),),
              Container(width: 100,height: 100,color: Colors.pinkAccent,),
              Container(width: 100,height: 100,color: const Color.fromARGB(255, 64, 112, 255),),
              Container(width: 100,height: 100,color: const Color.fromARGB(255, 24, 23, 23),),
              Container(width: 100,height: 100,color: const Color.fromARGB(255, 194, 126, 149),),
              Container(width: 100,height: 100,color: Colors.pinkAccent,),
              Container(width: 100,height: 100,color: const Color.fromARGB(255, 64, 112, 255),),
              Container(width: 100,height: 100,color: const Color.fromARGB(255, 24, 23, 23),),
              Container(width: 100,height: 100,color: const Color.fromARGB(255, 194, 126, 149),),
              Container(width: 100,height: 100,color: Colors.pinkAccent,),
              Container(width: 100,height: 100,color: const Color.fromARGB(255, 64, 112, 255),),
              Container(width: 100,height: 100,color: const Color.fromARGB(255, 24, 23, 23),),
              Container(width: 100,height: 100,color: const Color.fromARGB(255, 194, 126, 149),),
              Container(width: 100,height: 100,color: Colors.pinkAccent,),
              Container(width: 100,height: 100,color: const Color.fromARGB(255, 64, 112, 255),),
              Container(width: 100,height: 100,color: const Color.fromARGB(255, 24, 23, 23),),
              Container(width: 100,height: 100,color: const Color.fromARGB(255, 194, 126, 149),),
              Container(width: 100,height: 100,color: Colors.pinkAccent,),
              Container(width: 100,height: 100,color: const Color.fromARGB(255, 64, 112, 255),),
              Container(width: 100,height: 100,color: const Color.fromARGB(255, 24, 23, 23),),
              Container(width: 100,height: 100,color: const Color.fromARGB(255, 194, 126, 149),)
            ],
          ),
        ),
      ),
    );
  }
}