import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: SizedBox(
              height: 222,
              child: Card(
                margin: EdgeInsets.all(15),
                color: const Color.fromARGB(255, 228, 145, 145),
                shadowColor: const Color.fromARGB(255, 8, 8, 7),
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  onLongPress: (){print('onLongPress');},
                  onTap: (){print('onTap');},
                  //isThreeLine: true,
                  textColor: const Color.fromARGB(255, 8, 17, 124),
                  title: const Text('title' , style: TextStyle(fontSize: 25 , color: Colors.white),),
                  subtitle: Text('subtitle'),
                  trailing: Text('trailing'),
                  leading: Text('leading'),
                ),
                  
              ),
            ),
          ),
        ),
      ),
    );
  }
}