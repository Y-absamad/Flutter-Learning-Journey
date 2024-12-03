import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: TextField(
                maxLength: 1000,
                minLines: 1,
                maxLines: 3,
                //enabled: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red , width: 3),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color : Colors.green ,width: 3),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black , width: 3)
                  )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                cursorColor: Colors.black,
                cursorHeight: 20,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "Email : ",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w400, fontStyle: FontStyle.italic),

                  fillColor: Color.fromARGB(255, 213, 214, 214),
                  filled: true,
                  //labelText: "Email : ",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  prefixIcon: Icon(Icons.email),
                  prefixIconColor: Colors.indigo,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                cursorColor: Colors.black,
                cursorHeight: 20,
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    hintText: "Phone : ",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic),
                    fillColor: Color.fromARGB(255, 213, 214, 214),
                    filled: true,
                    //labelText: "Email : ",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    prefixIcon: Icon(Icons.phone),
                    prefixIconColor: Colors.indigo),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                cursorColor: Colors.black,
                cursorHeight: 20,
                obscureText: true,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                    hintText: "Password : ",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic),
                    fillColor: Color.fromARGB(255, 213, 214, 214),
                    filled: true,
                    //labelText: "Email : ",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    prefixIcon: Icon(Icons.key_off),
                    prefixIconColor: Colors.indigo,
                    suffixIcon: Icon(Icons.visibility),
                    suffixIconColor: Colors.indigo),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
