import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          floatingActionButton: FloatingActionButton(onPressed: () {
            Navigator.pop(context);
          },
          backgroundColor: Colors.blue[100],
          child:const Icon(Icons.home),
          ),
          backgroundColor: const Color.fromARGB(255, 4, 75, 188),
          appBar: AppBar(
            title: const Text(
              'Signup',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            backgroundColor: const Color.fromARGB(82, 2, 197, 227),
            centerTitle: true,
          ),
          body: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 280,
                  decoration: BoxDecoration(
                      color: Colors.blue[200],
                      borderRadius: BorderRadius.circular(50)),
                  child: const TextField(
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      prefixIconColor: Colors.black,
                      hintText: 'Username',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 25),
                  width: 280,
                  decoration: BoxDecoration(
                      color: Colors.blue[200],
                      borderRadius: BorderRadius.circular(50)),
                  child: const TextField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      prefixIconColor: Colors.black,
                      hintText: 'Email',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  //margin: const EdgeInsets.symmetric(vertical: 25),
                  width: 280,
                  decoration: BoxDecoration(
                      color: Colors.blue[200],
                      borderRadius: BorderRadius.circular(50)),
                  child: const TextField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      prefixIconColor: Colors.black,
                      hintText: 'Phone',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 25),
                  width: 280,
                  decoration: BoxDecoration(
                      color: Colors.blue[200],
                      borderRadius: BorderRadius.circular(50)),
                  child: const TextField(
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      prefixIconColor: Colors.black,
                      hintText: 'Password',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Action for the login button, currently empty
                  },
                  style: const ButtonStyle(
                    padding: WidgetStatePropertyAll(
                        EdgeInsets.fromLTRB(65, 10, 65, 10)),
                    backgroundColor: WidgetStatePropertyAll(
                        Color.fromARGB(255, 130, 191, 242)),
                  ),
                  child: const Icon(
                    Icons.login_outlined,
                    size: 27,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
