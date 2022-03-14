import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_fcm_app/utils/notification_config.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    sendFcmNotification();
    super.onInit();
  }

  void sendFcmNotification() {
    debugPrint('Send notification');
    FirebaseMessaging.onMessage.listen((message) {

      NotificationConfig.flutterLocalNotificationsPlugin.show(
        message.hashCode,
        message.,
        message.body,
        const NotificationDetails(
          android: AndroidNotificationDetails(
            'channel id',
            'channel name',
            channelDescription: 'channel description',
            icon: '@mipmap/ic_launcher',
          ),
        ),
      );
    });
  }
}
