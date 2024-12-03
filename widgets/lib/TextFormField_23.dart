import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GlobalKey<FormState> formState = GlobalKey();
  String? username;
  String? phone;
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              key: formState,
              child: Column(
                children: [
                  TextFormField(
                    //autovalidateMode: AutovalidateMode.always,
                    onSaved: (newValue) {
                      username = newValue;
                    },
                    decoration: const InputDecoration(
                      hintText: 'username',
                    ),
                    validator: (value) {
                      return value!.isEmpty ? "Filed is Empty" : '';
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    //autovalidateMode: AutovalidateMode.always,
                    onSaved: (newValue) {
                      phone = newValue;
                    },
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      hintText: 'phone',
                    ),
                    validator: (value) {
                      if (value!.length > 12) {
                        return "it can't be more than 12";
                      }
                      if (value!.length < 9) {
                        return "it can't be less than 9";
                      }
                    },
                  ),
                  MaterialButton(
                    textColor: Colors.white,
                    color: Colors.red,
                    onPressed: () {
                      formState.currentState!.validate();
                      formState.currentState!.save();
                    },
                    child: const Text(
                      'vaild',
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
