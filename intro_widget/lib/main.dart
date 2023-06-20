import 'package:flutter/material.dart';
import 'package:intro_widget/home.dart';

// TODO 1 - Button for switch theme
// TODO 2 - Update todo
// TODO 3 - Update the ui design of bottom sheet

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo',
      home: const HomeScreen(),
      themeMode: ThemeMode.system,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.amber,
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Colors.greenAccent
          )
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.purple
        )
      ),
    );
  }
}
