import 'package:flutter/material.dart';
import 'package:intro_widget/prodcuts_list.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User list'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Users Screen'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to home'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProductListScreen(),
                  ),
                );
              },
              child: const Text('Product list'),
            ),
            ElevatedButton(
              onPressed: () {
                /// push and replace (kill this screen)
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProductListScreen(),
                  ),
                );
              },
              child: const Text('Product list & remove this screen'),
            ),
          ],
        ),
      ),
    );
  }
}
