import 'package:flutter/material.dart';
import 'package:intro_widget/prodcuts_list.dart';
import 'package:intro_widget/users_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home Screen'),
            ElevatedButton(
              onPressed: () {
                // product list screen move koro
                // Navigator
                // screen to screen = (route)
                // route managed by router = Navigator
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProductListScreen(),
                  ),
                );
              },
              child: const Text('Go to product list'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => UserScreen(),
                  ),
                );
              },
              child: const Text('Go to user list'),
            )
          ],
        ),
      ),
    );
  }
}
