import 'package:flutter/material.dart';

void main() {
  runApp(MyApp11());
}

class MyApp11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              // Sets the background color of the bottom sheet
              backgroundColor: Colors.blue,
      
              // Sets the color of the barrier (the area outside the bottom sheet)
              barrierColor: Colors.amber,
                
              // Determines if the bottom sheet can be dismissed by tapping outside of it
              isDismissible: true,
      
              isScrollControlled: false,
      
              // Shows a drag handle on the bottom sheet, making it easier to drag
              showDragHandle: true,
              
              // Enables dragging the bottom sheet to dismiss it
              enableDrag: true,
      
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.home),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.settings),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: const Text('Bottom sheet'),
        ),
      ),
    );
  }
}
