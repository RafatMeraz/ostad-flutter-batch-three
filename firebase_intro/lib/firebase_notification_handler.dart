import 'package:firebase_messaging/firebase_messaging.dart';

/// 3 ways to send push notifications
/// 1. global
/// 2. Token
/// 3. Topic

class FirebaseNotificationHandler {
  FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initialization() async {
    await firebaseMessaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true
    );

    RemoteMessage? message = await FirebaseMessaging.instance.getInitialMessage();
    if (message != null) {
      messageHandler(message);
    }

    /// works on app is background
    FirebaseMessaging.onMessage.listen(messageHandler);
    // When app is in foreground
    FirebaseMessaging.onMessageOpenedApp.listen(messageHandler);
    // kill state
    FirebaseMessaging.onBackgroundMessage(firebaseMessingBackgroundHandler);
  }

  Future<void> messageHandler(RemoteMessage message) async {
    print(message.data);
    print(message.notification?.body ?? 'Empty body');
    print(message.notification?.title ?? 'Empty title');
  }

  Future<String?> getToken() async {
    final String? token = await firebaseMessaging.getToken();
    print(token);
    return token;
  }

  void onTokenRefresh() {
    firebaseMessaging.onTokenRefresh.listen((token) {
      print('Send to api $token');
    });
  }

  Future<void> subscribeToTopic(String topicName) async {
    await firebaseMessaging.subscribeToTopic(topicName);
  }

  Future<void> unsubscribeToTopic(String topicName) async {
    await firebaseMessaging.unsubscribeFromTopic(topicName);
  }

}

/// top level function - not a method(not related to any class)
Future<void> firebaseMessingBackgroundHandler(RemoteMessage message) async {
  print(message.data);
  print(message.notification?.body ?? 'Empty body');
  print(message.notification?.title ?? 'Empty title');
}