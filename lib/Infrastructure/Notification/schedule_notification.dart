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
      'Your vibe, your sound',
      'Drop in and find a tune for how you\'re feeling today.',
      tz.TZDateTime.now(tz.local).add(Duration(hours: 6)),
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'com.xenotune',
          'xenotrix',
          icon: 'splash',
          largeIcon: DrawableResourceAndroidBitmap('splash'),
          importance: Importance.max,
          priority: Priority.high,
          ticker: 'ticker',
          enableVibration: false,
        ),
      ),
      matchDateTimeComponents: DateTimeComponents.time,
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
    );
  }
}

Future<void> ifUserNotOpendedTheAppFor48Hour() async {
  final permission =
      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin
          >()
          ?.areNotificationsEnabled() ??
      false;

  if (permission) {
    await flutterLocalNotificationsPlugin.zonedSchedule(
      2,
      'Missed you',
      'Haven’t tuned in for a while — let’s reconnect with a mood.',
      tz.TZDateTime.now(tz.local).add(Duration(hours: 48)),
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'com.xenotune',
          'xenotrix',
          icon: 'splash',
          largeIcon: DrawableResourceAndroidBitmap('splash'),
          importance: Importance.max,
          priority: Priority.high,
          ticker: 'ticker',
          enableVibration: false,
        ),
      ),
      matchDateTimeComponents: DateTimeComponents.time,
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
    );
  }
}

Future<void> show10PmNotification() async {
  final permission =
      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin
          >()
          ?.areNotificationsEnabled() ??
      false;

  if (!permission) return;

  final now = tz.TZDateTime.now(tz.local);

  var scheduledTime = tz.TZDateTime(
    tz.local,
    now.year,
    now.month,
    now.day,
    22,
    0,
  );

  if (scheduledTime.isBefore(now)) {
    scheduledTime = scheduledTime.add(Duration(days: 1));
  }

  await flutterLocalNotificationsPlugin.zonedSchedule(
    3,
    'Time to unwind',
    'Getting late? Let Xenotune help you fall asleep peacefully.',
    scheduledTime,
    const NotificationDetails(
      android: AndroidNotificationDetails(
        'com.xenotune',
        'xenotrix',
        icon: 'splash',
        largeIcon: DrawableResourceAndroidBitmap('splash'),
        importance: Importance.max,
        priority: Priority.high,
        ticker: 'ticker',
        enableVibration: false,
      ),
    ),
    matchDateTimeComponents: DateTimeComponents.time,
    androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
  );
}
