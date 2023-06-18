import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.black,
                      height: 90,
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Container(
                      color: Colors.greenAccent,
                      height: 90,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.amber,
                      height: 90,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.cyan,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.black,
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: Container(
                        color: Colors.greenAccent,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: Container(
              color: Colors.pink,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.black,
                        height: 90,
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: Container(
                        color: Colors.greenAccent,
                        height: 90,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.amber,
                        height: 90,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            onPressed: () {
              showDialog(
                  context: context,
                  barrierDismissible: false,
                  barrierColor: Colors.transparent,
                  builder: (context) {
                    return AlertDialog(
                      shadowColor: Colors.grey,
                      titlePadding: const EdgeInsets.only(left: 16),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Message'),
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.close),
                          ),
                        ],
                      ),
                      content: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Welcome to our app'),
                          Text('Welcome to our app'),
                          Text('Welcome to our app'),
                          Text('Welcome to our app'),
                          Text('Welcome to our app'),
                        ],
                      ),
                      contentPadding: const EdgeInsets.all(24),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      actions: [
                        OutlinedButton(
                            onPressed: () {}, child: const Text('Confirm'))
                      ],
                    );
                  });
            },
            label: const Text('Dialog'),
          ),
          FloatingActionButton.extended(
            onPressed: () {
              // TODO - Challenge: showBottomSheet - solve this error and make bottom sheet visible

              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  useSafeArea: true,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  )),
                  builder: (context) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Title', style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500
                            ),),
                            IconButton(
                              icon: const Icon(Icons.close),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            )
                          ],
                        ),
                        Divider(
                          color: Colors.pink,
                        ),
                      ],
                    );
                  });
            },
            label: const Text('Bottomsheet'),
          ),
        ],
      ),
    );
  }
}
