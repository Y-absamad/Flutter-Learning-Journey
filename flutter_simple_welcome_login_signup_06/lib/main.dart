import 'package:flutter/material.dart';
import 'package:flutter_simple_welcome_login_signup_06/login.dart';
import 'package:flutter_simple_welcome_login_signup_06/signup.dart';
import 'package:flutter_simple_welcome_login_signup_06/welcome.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'welcome',
      routes: {
        'welcome':(context) => const Welcome(),
        '/login' : (context) => const Login(),
        '/signup' : (context) => const Signup(),
      },
    );    
  }
}

