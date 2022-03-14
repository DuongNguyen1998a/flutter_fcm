import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationConfig {
  static const AndroidNotificationChannel androidNotificationChannel =
      AndroidNotificationChannel(
    'Channel id',
    'channel name',
    description: 'channel description',
    importance: Importance.high,
    playSound: true,
  );

  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
    await Firebase.initializeApp();
    debugPrint('Firebase: A background message showed up ${message.messageId!}');
  }
}
