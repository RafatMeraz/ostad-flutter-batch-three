import 'package:flutter/material.dart';

/// Listview, divider, Scrollbar, Stack, Align, Positioned,

void main() {
  runApp(MyApp(
    appName: 'Chicken\'s App',
  ));
}

class MyApp extends StatelessWidget {

  final String appName;

  const MyApp({required this.appName});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: appName,
        home: HomeScreen()
    );
  }
}

class HomeScreen extends StatelessWidget {

  List<String> students = [
    'Rafat',
    'Nazmul',
    'Rafi',
    'Siam',
    'Rohan',
    'Rohan',
    'Rohan',
    'Rohan',
    'Rohan',
    'Rohan',
    'Rohan',
    'Rohan',
    'Rohan',
    'Rohan',
    'Rohan',
    'Rohan',
    'Rohan',
    'Rohan',
    'Rohan',
    'Rohan',
    'Rayhan'
  ];

  Map<int, String> universities = {
    1 : 'BUET',
    2 : 'DU',
    3 : 'NSU',
    4 : 'IUB',
    5 : 'RUET',
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Intro to widgets',
          // textDirection: TextDirection.ltr,
          style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          wordSpacing: 0.6,
          letterSpacing: 0.6,
          fontSize: 24,
            // decoration: TextDecoration.lineThrough
        ),),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Scrollbar(
              thickness: 10,
              // isAlwaysShown: true,
              // interactive: true,
              child: ListView.separated(
                itemCount: students.length,
                primary: false,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(students[index]),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 0,
                    color: Colors.yellow,
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
              child: ListView.builder(
                itemCount: students.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Text(students[index]);
                },
              ),
            ),
          ],
        ),
      )
     /* body: ListView.separated(
        itemCount: universities.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(universities.values.elementAt(index).toString()),
            subtitle: Text(universities.keys.elementAt(index).toString()),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 0,
            color: Colors.yellow,
          );
        },
      )*/
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Stack(
      //       children: [
      //         Container(
      //           width: 200,
      //           height: 200,
      //           color: Colors.yellow,
      //           alignment: Alignment.center,
      //         ),
      //         Container(
      //           width: 30,
      //           height: 30,
      //           color: Colors.pink,
      //         ),
      //         Positioned(
      //           // bottom: 10,
      //           // right: 10,
      //           // top: 10,
      //           // left: 10,
      //           child: Container(
      //             color: Colors.black,
      //           ),
      //         ),
      //         Positioned.fill(
      //           child: Align(
      //             alignment: Alignment.center,
      //             child: Text(
      //               'Hello',
      //               style: TextStyle(color: Colors.white),
      //             ),
      //           ),
      //         ),
      //         Container(
      //           width: 500,
      //           height: 400,
      //           // color: Colors.black,
      //         )
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}
