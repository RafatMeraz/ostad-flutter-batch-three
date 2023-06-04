import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
    appName: 'Chicken\'s App',
  ));
}

class MyApp extends StatelessWidget {

  final String appName;

  const MyApp({required this.appName});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: appName,
        home: HomeScreen()
    );
  }
}

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text('Intro to widgets',
          // textDirection: TextDirection.ltr,
          style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          wordSpacing: 0.6,
          letterSpacing: 0.6,
          fontSize: 24,
            // decoration: TextDecoration.lineThrough
        ),),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Hello World'),
        ],
      ))
    );
  }
}
