import 'dart:developer';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> initNotifications() async {
  const AndroidInitializationSettings androidSettings =
      AndroidInitializationSettings('@mipmap/ic_launcher');

  const InitializationSettings initSettings = InitializationSettings(
    android: androidSettings,
  );

  await flutterLocalNotificationsPlugin.initialize(initSettings);
}

Future<void> configureTimeZone() async {
  log('this');
  tz.initializeTimeZones();
  // ignore: unnecessary_nullable_for_final_variable_declarations
  String timeZoneName = await FlutterTimezone.getLocalTimezone();
  if (timeZoneName == 'Asia/Calcutta') {
    timeZoneName = 'Asia/Kolkata';
  }
  final tz.Location location = tz.getLocation(timeZoneName);

  tz.setLocalLocation(location);

  log(timeZoneName.toString());
}

Future<void> requestPermission() async {
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin
      >()
      ?.requestNotificationsPermission();
}
