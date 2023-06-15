import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final String productName;

  const ProductDetails(this.productName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User list'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(productName),
            ElevatedButton(onPressed: () {
              Navigator.pop(context, 'Hello Mamun');
            }, child: Text('Back')),
          ],
        ),
      ),
    );
  }
}
