import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;

import 'package:xenotune_flutter_dev/Infrastructure/Notification/initilize_notification.dart';

Future<void> scheduleMoodReminder() async {
  final permission =
      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin
          >()
          ?.areNotificationsEnabled() ??
      false;

  if (permission) {
    await flutterLocalNotificationsPlugin.zonedSchedule(
      0,
      'Mood Reminder',
      'Feeling something? Let Xenotune match your vibe.',
      tz.TZDateTime.now(tz.local).add(Duration(minutes: 30)),
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'mood_channel_id',
          'Mood Notifications',
          importance: Importance.max,
          priority: Priority.high,
        ),
      ),
      matchDateTimeComponents: DateTimeComponents.time,
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
    );
  }
}

Future<void> showNotification() async {
  const AndroidNotificationDetails androidNotificationDetails =
      AndroidNotificationDetails(
        'com.xenotune',
        'xenotrix',
        icon: 'splash',
        largeIcon: DrawableResourceAndroidBitmap('splash'),
        importance: Importance.max,
        priority: Priority.high,
        ticker: 'ticker',
        enableVibration: false,
      );
  const NotificationDetails notificationDetails = NotificationDetails(
    android: androidNotificationDetails,
  );
  await flutterLocalNotificationsPlugin.show(
    1,
    'Hey user,',
    'feeling stressed, listen to this calm music',
    notificationDetails,
    payload: 'item x',
  );
}
