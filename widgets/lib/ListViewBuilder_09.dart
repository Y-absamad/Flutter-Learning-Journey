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
        body: EmployeeList(),
      ),
    );
  }
}

class EmployeeList extends StatelessWidget {
  final List<Map<String, dynamic>> employees = [
    {'fname': 'Yousef', "lname": 'Ahmed', "age": 22},
    {'fname': 'Maher', "lname": 'Mohammed', "age": 45},
    {'fname': 'Ali', "lname": 'Abdelsamad', "age": 15},
    {'fname': 'Yousef', "lname": 'Ahmed', "age": 22},
    {'fname': 'Maher', "lname": 'Mohammed', "age": 45},
    {'fname': 'Ali', "lname": 'Abdelsamad', "age": 15},
    {'fname': 'Yousef', "lname": 'Ahmed', "age": 22},
    {'fname': 'Maher', "lname": 'Mohammed', "age": 45},
    {'fname': 'Ali', "lname": 'Abdelsamad', "age": 15},
    {'fname': 'Hany', "lname": 'Wael', "age": 10}
  ];

  EmployeeList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        //physics: NeverScrollableScrollPhysics(), when ListView within Listview
        itemCount: employees.length,
        itemBuilder: (context, index) {
          return EmployeeCard(employee: employees[index], index: index);
        });
  }
}

class EmployeeCard extends StatelessWidget {
  final Map<String, dynamic> employee;
  final int index;
  const EmployeeCard({Key? key, required this.employee, required this.index})
      : super(key: key);

  static const TextStyle infoStyle = TextStyle(
    fontSize: 16,
    color: Color.fromARGB(255, 6, 6, 6),
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor = index.isEven
        ? const Color.fromARGB(255, 33, 142, 243)
        : const Color.fromARGB(255, 105, 240, 206);
    return Container(
      color: backgroundColor,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Frist name: ${employee["fname"]}',
            style: infoStyle,
          ),
          Text(
            'Last name: ${employee["lname"]}',
            style: infoStyle,
          ),
          Text(
            'Age: ${employee["age"]}',
            style: infoStyle,
          ),
        ],
      ),
    );
  }
}
