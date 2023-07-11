import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                children: [
                  /// fitted box
                  SizedBox(
                      width: 100,
                      height: 20,
                      child: FittedBox(
                          alignment: Alignment.center,
                          fit: BoxFit.contain,
                          child: Text('In publishing and graphic design, Lorem')),
                  ),
                  Text('In publishing and graphic design, Lorem'),
                ],
              ),
              SizedBox(height: size.height/5),
              Text(size.width.toString()),
              if (constraints.maxWidth > 1600)
                const Text('Big Desktop screen'),
              if (constraints.maxWidth > 1200)
                const Text('Desktop screen'),
              if (constraints.maxWidth > 700 && constraints.maxWidth < 1200)
                const Text('tablet'),
              if (constraints.maxWidth <= 700)
                const Text('Phone'),

              // FractionallySizedBox(
              //   heightFactor: 2,
              // ),
              /// Aspect Ratio
              Container(
                color: Colors.pink,
                height: 200,
                width: 200,
                alignment: Alignment.center,
                child: AspectRatio(
                  aspectRatio: 16/9,
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
              ),
            ],
          );
        }
      ),
    );
  }
}
