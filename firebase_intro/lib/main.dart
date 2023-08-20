import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_intro/firebase_notification_handler.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/// Let's an App that will show our basketball live score

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseNotificationHandler().initialization();
  FirebaseNotificationHandler().onTokenRefresh();
  print(await FirebaseNotificationHandler().getToken());
  await FirebaseNotificationHandler().subscribeToTopic('ostad');
  runApp(const BasketBallLiveScoreApp());
}

class BasketBallLiveScoreApp extends StatelessWidget {
  const BasketBallLiveScoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Live score app'),
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('basketball')
              .doc('1_ban_vs_ind')
              // .collection('abs')
              // .doc('dfdf')
              // .collection('abs')
              // .doc('dfdf')
              // .collection('abs')
              // .doc('dfdf')
              // .collection('abs')
              // .doc('dfdf')
              // .collection('abs')
              // .doc('dfdf')
              .snapshots(),
          builder:
              (context, AsyncSnapshot<DocumentSnapshot<Object?>> snapshot) {
            print(snapshot.data?.data());
            if (snapshot.hasData) {
              final score = snapshot.data!;
              return Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 48,
                    ),
                    Text(
                      score.get('match_name'),
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              score.get('score_team_a').toString(),
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Text(
                              score.get('team_a'),
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ],
                        ),
                        const Text('vs'),
                        Column(
                          children: [
                            Text(
                              score.get('score_team_b').toString(),
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Text(
                              score.get('team_b'),
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FirebaseFirestore.instance
              .collection('basketball')
              .doc('1_ban_vs_ind')
              .update({'match_name': "Bangladesh VS India", 'score_team_b': 7});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
