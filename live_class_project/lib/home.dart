import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final or = MediaQuery.orientationOf(context);
    // final or = MediaQuery.of(context).orientation;
    print(or);
    return Scaffold(
      appBar: AppBar(),
      body: OrientationBuilder(
        builder: (context, orientation) {
          /// Portrait
          /// Landscape
          if (orientation == Orientation.landscape) {
            return Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(orientation.toString()),
                  Text(orientation.name),
                ],
              ),
            );
          }
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(orientation.toString()),
                Text(orientation.name),
              ],
            ),
          );
        },
      ),
    );
  }
}
