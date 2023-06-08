import 'package:flutter/material.dart';

// FAB, ELEVATED, Outline, textbutton, icon button, inkwell, gesture detector

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

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
  TextEditingController _emailTextEditingController =
      TextEditingController(text: 'example@gmail.com');
  TextEditingController _userNameTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Widgets'),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.home_outlined),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none),
          ),
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _emailTextEditingController,
                  decoration: InputDecoration(
                    label: Text('Email'),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple)
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _userNameTextEditingController,
                  decoration: InputDecoration(
                      label: Text('User name', style: TextStyle(
                        color: Colors.purple
                      ),),
                    hintText: 'Enter your username',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple, width: 2)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple, width: 1)
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    print(_emailTextEditingController.text);
                    print(_userNameTextEditingController.text);
                    _userNameTextEditingController.text = 'Meraz';
                    _emailTextEditingController.clear();
                  },
                  child: Text('Submit'),
              ),
              ListTile(
                onTap: () {
                  print('tapped');
                },
                onLongPress: () {
                  print('On long press');
                },
                title: Text('Username'),
                subtitle: Text('Designation'),
                leading: Icon(Icons.account_circle_outlined, size: 32,),
                trailing: Icon(Icons.arrow_forward_outlined),
                tileColor: Colors.grey.withOpacity(0.3),
                contentPadding: EdgeInsets.symmetric(horizontal: 16,),
              ),
              SizedBox(height: 10),
              ListTile(
                onTap: () {
                  print('tapped');
                },
                onLongPress: () {
                  print('On long press');
                },
                title: Text('Username'),
                subtitle: Text('Designation'),
                leading: Icon(Icons.account_circle_outlined),
                trailing: Icon(Icons.arrow_forward_outlined),
                tileColor: Colors.grey.withOpacity(0.3),
                contentPadding: EdgeInsets.symmetric(horizontal: 16,),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                spacing: 20,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print(_emailTextEditingController.text);
                      print(_userNameTextEditingController.text);
                      _userNameTextEditingController.text = 'Meraz';
                      _emailTextEditingController.clear();
                    },
                    child: Text('Submit'),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      print(_emailTextEditingController.text);
                      print(_userNameTextEditingController.text);
                      _userNameTextEditingController.text = 'Meraz';
                      _emailTextEditingController.clear();
                    },
                    child: Text('Submit'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print(_emailTextEditingController.text);
                      print(_userNameTextEditingController.text);
                      _userNameTextEditingController.text = 'Meraz';
                      _emailTextEditingController.clear();
                    },
                    child: Text('Submit'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print(_emailTextEditingController.text);
                      print(_userNameTextEditingController.text);
                      _userNameTextEditingController.text = 'Meraz';
                      _emailTextEditingController.clear();
                    },
                    child: Text('Submit'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print(_emailTextEditingController.text);
                      print(_userNameTextEditingController.text);
                      _userNameTextEditingController.text = 'Meraz';
                      _emailTextEditingController.clear();
                    },
                    child: Text('Submit'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print(_emailTextEditingController.text);
                      print(_userNameTextEditingController.text);
                      _userNameTextEditingController.text = 'Meraz';
                      _emailTextEditingController.clear();
                    },
                    child: Text('Submit'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print(_emailTextEditingController.text);
                      print(_userNameTextEditingController.text);
                      _userNameTextEditingController.text = 'Meraz';
                      _emailTextEditingController.clear();
                    },
                    child: Text('Submit'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print(_emailTextEditingController.text);
                      print(_userNameTextEditingController.text);
                      _userNameTextEditingController.text = 'Meraz';
                      _emailTextEditingController.clear();
                    },
                    child: Text('Submit'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print(_emailTextEditingController.text);
                      print(_userNameTextEditingController.text);
                      _userNameTextEditingController.text = 'Meraz';
                      _emailTextEditingController.clear();
                    },
                    child: Text('Submit'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print(_emailTextEditingController.text);
                      print(_userNameTextEditingController.text);
                      _userNameTextEditingController.text = 'Meraz';
                      _emailTextEditingController.clear();
                    },
                    child: Text('Submit'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print(_emailTextEditingController.text);
                      print(_userNameTextEditingController.text);
                      _userNameTextEditingController.text = 'Meraz';
                      _emailTextEditingController.clear();
                    },
                    child: Text('Submit'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print(_emailTextEditingController.text);
                      print(_userNameTextEditingController.text);
                      _userNameTextEditingController.text = 'Meraz';
                      _emailTextEditingController.clear();
                    },
                    child: Text('Submit'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
