import 'package:flutter/material.dart';

// FAB, ELEVATED, Outline, textbutton, icon button, inkwell, gesture detector

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// elevated
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      // minimumSize: Size(100, 40),
                      // maximumSize: Size(1000, 40),
                      elevation: 5,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                      shadowColor: Colors.deepPurpleAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: BorderSide(
                            color: Colors.purple,
                            width: 3,
                          ))),
                  onPressed: () {},
                  child: Text('Press')),
              // text button
              TextButton(
                style: TextButton.styleFrom(),
                onPressed: () {},
                child: Text('Text button'),
              ),
              // outline button
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.blue)),
                  onPressed: () {},
                  child: Text('Outlined button')),
              // outline button with icon
              OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.blue)),
                  onPressed: () {},
                  icon: Icon(Icons.account_tree),
                  label: Text('Outlined button with icon')),
              // icon button
              IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              // gesture detector
              GestureDetector(
                  onLongPress: () {
                    print('long press');
                  },
                  onDoubleTap: () {
                    print('double pressed');
                  },
                  onTap: () {
                    print('Pressed');
                  },
                  child: Image.asset(
                    'images/owl-two.jpg',
                    width: 100,
                  )),
              // ink well
              InkWell(
                splashColor: Colors.yellow,
                onLongPress: () {
                  print('long press');
                },
                onDoubleTap: () {
                  print('double pressed');
                },
                onTap: () {
                  print('Pressed');
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('sdfdf'),
                ),
              ),
              Card(
                elevation: 5,
                shadowColor: Colors.purple,
                color: Colors.blueGrey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('MD Faysal Ahmed'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2)),
                  ),
                ),
              ),
              TextField(
                controller: TextEditingController(),
                obscureText: true,
                onSubmitted: (value) {
                  print(value);
                },
                onChanged: (value) {
                  // print(value);
                },
                textInputAction: TextInputAction.done,
                // readOnly: true,
                textAlign: TextAlign.center,
              ),
              TextField(),
              TextField(),
              TextField(),
            ],
          ),
        ),
      ),
    );
  }
}
