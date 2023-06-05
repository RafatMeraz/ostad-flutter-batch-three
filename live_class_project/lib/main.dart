import 'package:flutter/material.dart';

// Container, Button, Icon, image, fab, bottom tab/app

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

// stless => Enter
// ctl + s => hot reload windows
// cmd + s => hot reload mac

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Widgets'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.pink,
              // margin: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              // padding: EdgeInsets.all(8),
              // alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 16),
              child: Text('Ostad', style: TextStyle(
                color: Colors.white,
                fontSize: 24
              ),),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(color: Colors.amber, width: 4),
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.only(bottom: 16, top: 10, left: 4, right: 8),
              alignment: Alignment.center,
              child: Text(
                'Ostad',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            Icon(
              Icons.account_circle_outlined,
              color: Colors.purple,
              size: 60,
            ),
            // https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg
            Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
              width: 200,
              height: 100,
              fit: BoxFit.cover,
            ),
            Container(
                margin: EdgeInsets.only(top: 16),
                child: Image.asset('images/owl-two.jpg', width: 100, height: 100,),),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 16)),
              onPressed: () {
                print('hello');
              },
              child: Text(
                'Add',
                style: TextStyle(fontSize: 24),
              ),
            )
          ],
        ),
      ),
    );
  }
}

