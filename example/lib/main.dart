import 'package:flutter/material.dart';
import 'package:text_with_outline/text_with_outline.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Text with Boarding',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: TextTheme(
          titleMedium: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
      home: const MyHomePage(title: 'Text with outlined letters'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWithOutline(
          enterText: 'Welcome',
          colorContour: Colors.lightBlueAccent,
          colorInterior: Colors.black,
          strokeWidth: 4,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 50),
          child: Column(
            spacing: 30,

            children: [
              TextWithOutline(
                enterText: "It's easy to make a text with border",
                colorContour: Colors.black,
                colorInterior: const Color.fromARGB(255, 233, 111, 255),
                strokeWidth: 3,
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 2,
                  fontFamily: 'Delius',
                ),
              ),
              TextWithOutline(
                enterText: 'Just add the package to your pubspec.yaml',
                colorContour: Colors.blue,
                colorInterior: Colors.yellow,
                style: TextStyle(fontSize: 20, letterSpacing: 2),
              ),
              TextWithOutline(
                enterText:
                    "In your page add : import 'package:text_with_boarding/text_with_boarding.dart'; ",
                colorContour: Colors.black,
                colorInterior: Colors.red,
                style: TextStyle(fontSize: 20, letterSpacing: 2),
              ),
              TextWithOutline(
                enterText:
                    "And use the widget : TextWithOuline(). text and 2 colors are required ",
                colorContour: Colors.black,
                colorInterior: Colors.green,
                style: TextStyle(fontSize: 20, letterSpacing: 2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
