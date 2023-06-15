import 'package:flutter/material.dart';
import 'package:intro_widget/product_details.dart';
import 'package:intro_widget/users_screen.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  String message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product list'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Product list Screen'),
            Text(message),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back to home')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => UserScreen()),
                      (route) => false);
                },
                child: const Text('User list')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ProductDetails('Gucci handbag')),
                  ).then((value) {
                    message = value.toString();
                    setState(() {});
                  });
                },
                child: const Text('Product details'))
          ],
        ),
      ),
    );
  }
}
