import 'package:flutter/material.dart';
import 'package:intro_widget/counter_screen.dart';

/// statefulwidget

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
        home: CounterScreen()
    );
  }
}



/// Intro / Widget
class MessageScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    print('step 1 - createState');
    return _MessageScreenState();
  }
}

/// State part
class _MessageScreenState extends State<MessageScreen> {

  String welcomeMessage = 'Hi';

  @override
  void initState() {
    super.initState();
    print('step 2 : init state');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('Step 3 : didChangeDependency');
  }

  @override
  void didUpdateWidget(covariant MessageScreen oldWidget) {
    print('updated');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('Build call');
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful widget'),
      ),
      body: Center(
        child: Text(welcomeMessage, style: TextStyle(fontSize: 24),),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          welcomeMessage = welcomeMessage == 'Hi' ? 'Hello' : 'Hi';
          print(welcomeMessage);
          setState(() {});
        },
        label: Text('Change text'),
      ),
    );
  }

  void changeState() {
    setState(() {});
  }

  @override
  void deactivate() {
    print('deactivce');
    super.deactivate();
  }

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }
}









