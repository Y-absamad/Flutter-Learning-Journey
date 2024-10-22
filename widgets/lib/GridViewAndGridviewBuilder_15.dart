import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Gridview() ,/// [GridviewBuilder(),]
      ),
    );
  }
}

class GridviewBuilder extends StatelessWidget {
  GridviewBuilder({super.key});
  List<String> number = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 20,
        crossAxisSpacing: 5,
        childAspectRatio: 0.5,
        //mainAxisExtent: 100,
      ),
        itemCount: number.length,
        itemBuilder: (context, i) {
          return Container(
            height: 100,
            color: const Color.fromARGB(255, 1, 30, 16),
            child: Text(
              textAlign: TextAlign.center,
              number[i],
              style: const TextStyle(fontSize: 25, color: Colors.white),
            ),
          );
        }
    );
  }
}

class Gridview extends StatelessWidget {
  Gridview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 300,
      child: GridView(
        scrollDirection: Axis.horizontal,
        //reverse: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 20,
          crossAxisSpacing: 15,
          //childAspectRatio: 1,
          //mainAxisExtent: 100,
          
        ),
        children:  [
          Container(color: Colors.amber , child: const Text('Youse' , style: TextStyle(fontSize: 25 , color: Colors.blueAccent,))),
          Container(color: Colors.amber, child: const Text('Ahmed' , style: TextStyle(fontSize: 25 , color: Colors.blueAccent,))),
          Container(color: Colors.amber, child: const Text('Mohmed' , style: TextStyle(fontSize: 25 , color: Colors.blueAccent,))),
          Container(color: Colors.amber, child: const Text('Ali' , style: TextStyle(fontSize: 25 , color: Colors.blueAccent,))),
          Container(color: Colors.amber, child: const Text('Joe' , style: TextStyle(fontSize: 25 , color: Colors.blueAccent,))),
          Container(color: Colors.amber, child: const Text('Youse' , style: TextStyle(fontSize: 25 , color: Colors.blueAccent,))),
          Container(color: Colors.amber, child: const Text('Sayed' , style: TextStyle(fontSize: 25 , color: Colors.blueAccent,))),
          Container(color: Colors.amber, child: const Text('Mo' , style: TextStyle(fontSize: 25 , color: Colors.blueAccent,))),
          Container(color: Colors.amber, child: const Text('Badr' , style: TextStyle(fontSize: 25 , color: Colors.blueAccent,))),
          Container(color: Colors.amber, child: const Text('Weal' , style: TextStyle(fontSize: 25 , color: Colors.blueAccent,))),
          Container(color: Colors.amber, child: const Text('Youse' , style: TextStyle(fontSize: 25 , color: Colors.blueAccent,))),
          Container(color: Colors.amber, child: const Text('Sayed' , style: TextStyle(fontSize: 25 , color: Colors.blueAccent,))),
          Container(color: Colors.amber, child: const Text('Mo' , style: TextStyle(fontSize: 25 , color: Colors.blueAccent,))),
          Container(color: Colors.amber, child: const Text('Badr' , style: TextStyle(fontSize: 25 , color: Colors.blueAccent,))),
          Container(color: Colors.amber, child: const Text('Weal' , style: TextStyle(fontSize: 25 , color: Colors.blueAccent,))),
          Container(color: Colors.amber, child: const Text('Joe' , style: TextStyle(fontSize: 25 , color: Colors.blueAccent,))),
          Container(color: Colors.amber, child: const Text('Youse' , style: TextStyle(fontSize: 25 , color: Colors.blueAccent,))),
          Container(color: Colors.amber, child: const Text('Sayed' , style: TextStyle(fontSize: 25 , color: Colors.blueAccent,))),
          Container(color: Colors.amber, child: const Text('Mo' , style: TextStyle(fontSize: 25 , color: Colors.blueAccent,))),
          Container(color: Colors.amber, child: const Text('Badr' , style: TextStyle(fontSize: 25 , color: Colors.blueAccent,))),
          Container(color: Colors.amber, child: const Text('Weal' , style: TextStyle(fontSize: 25 , color: Colors.blueAccent,))),
          Container(color: Colors.amber, child: const Text('Youse' , style: TextStyle(fontSize: 25 , color: Colors.blueAccent,))),
          Container(color: Colors.amber, child: const Text('Sayed' , style: TextStyle(fontSize: 25 , color: Colors.blueAccent,))),
          Container(color: Colors.amber, child: const Text('Mo' , style: TextStyle(fontSize: 25 , color: Colors.blueAccent,))),
          Container(color: Colors.amber, child: const Text('Badr' , style: TextStyle(fontSize: 25 , color: Colors.blueAccent,))),
          Container(color: Colors.amber, child: const Text('Weal' , style: TextStyle(fontSize: 25 , color: Colors.blueAccent,))),
        ],
          
      ),
    );
  }
}
