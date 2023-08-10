import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({Key? key}) : super(key: key);

  // dependency manager
  final CounterController _counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: GetBuilder<CounterController>(builder: (_) {
          return Text(
            '${_counterController.count}',
            style: const TextStyle(fontSize: 24),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counterController.increment(2);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CounterController extends GetxController {
  int count = 0;

  void increment(int value) {
    count += value;
    update();
  }
}
