import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: const HomePage(),
      routes: {
        'Home' : (context) => const HomePage(),
        'Second' : (context) => const SecondPage(),
        'Third' : (context) => const ThirdPage(),
        'Fourth' : (context) => const FourthPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 199),
          const Center(
            child: Text(
              'Home Page',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          CustomContainer(
            text: 'Go To Second Page (PushNamed)',
            onPressed: () {
              Navigator.of(context).pushNamed('Second');
            },
          ),
          CustomContainer(
            text: 'Go To Third Page (Replacement)',
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const ThirdPage()));
            },
          ),
          CustomContainer(
            text: 'Go To Fourth Page (PushAndRemoveUntil)',
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => const FourthPage()),
                  (route) => false);
            },
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: ListView(
          children: [
            const SizedBox(height: 199),
            const Center(
              child: Text(
                'Second Page',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CustomContainer(
              text: 'Pop this Page',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CustomContainer(
              text: 'Go To Fourth Page (PushAndRemoveUntil)',
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => const FourthPage()),
                    (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: ListView(
          children: [
            const SizedBox(height: 199),
            const Center(
              child: Text(
                'Third Page',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Text(
              textAlign: TextAlign.center,
              'the last page in the app uses Replacement , so going back will cause the app to close',
              style: TextStyle(fontSize: 25, color: Colors.red),
            ),
            CustomContainer(
              text: 'Replacement',
              color: Colors.red,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CustomContainer(
              text: 'Return to Home Page (pushReplacementNamed)',
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('Home');
              },
            ),
          ],
        ),
        //appBar: AppBar(title: const Text('AppBar')),
      ),
    );
  }
}

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: ListView(
          children: [
            const SizedBox(height: 199),
            const Center(
              child: Text(
                'Fourth Page',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Text(
              textAlign: TextAlign.center,
              'the last page in the app uses PushAndRemoveUntil , so going back will cause the app to close',
              style: TextStyle(fontSize: 25, color: Colors.red),
            ),
            CustomContainer(
              color: Colors.red,
              text: 'Back to NULL',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CustomContainer(
              text: 'Return to Home Page (pushReplacement)',
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
          ],
        ),
        //appBar: AppBar(title: const Text('AppBar')),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key, required this.text, required this.onPressed , this.color = Colors.white});
  final String text;
  final VoidCallback onPressed;
  final Color color;
  
  final double fontSize = 25;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: fontSize * 0.5,
        vertical: fontSize * 0.5,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.blueAccent,
        border: Border.all(style: BorderStyle.solid, width: 3),
      ),
      child: MaterialButton(
        onPressed: () => onPressed(),
        child: Text(
          textAlign: TextAlign.center,
          text,
          style: TextStyle(fontSize: fontSize, color: color),
        ),
      ),
    );
  }
}
