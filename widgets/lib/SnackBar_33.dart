import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: ShowSnack(),
        ),
      ),
    );
  }
}


class ShowSnack extends StatelessWidget {
  const ShowSnack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.black87,
            duration: const Duration(seconds: 1),
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            showCloseIcon: true,
            closeIconColor: Colors.red,
            action: SnackBarAction(label: 'Actions', textColor: Colors.amber  ,onPressed: (){print('object');} ),
            content: const Text(textDirection: TextDirection.rtl, 'تم النسخ '),
          ),
        );
      },
      child: Container(
        color: Colors.amber,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
          child: Text('Show SnackBar'),
        ),
      ),
    );
  }
}