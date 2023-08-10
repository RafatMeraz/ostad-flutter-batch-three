import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartsScreen extends StatelessWidget {
  const CartsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carts'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Carts'),
            ElevatedButton(
              onPressed: () {
                Get.back(result: Params('Rafat', 45));
              },
              child: const Text('Back to home'),
            )
          ],
        ),
      ),
    );
  }
}

class Params {
  final String name;
  final int age;

  Params(this.name, this.age);
}