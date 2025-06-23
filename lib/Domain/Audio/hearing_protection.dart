import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';

Timer? _hearingReminderTimer;

final reminders = [
  "Take care of your ears — listening with earphones\nat high volume for too long\ncan cause hearing damage.",
  "Too much loud music through earphones isn't safe.\nTry lowering the volume or taking a break.",
  "Long sessions with loud music and earphones?\nGive your ears a short rest!",
  "Listening with earphones at high volume\nfor extended time can affect\nyour hearing health.",
  "Your ears matter! Consider turning down\nthe volume or unplugging for a bit.",
  "Protect your hearing — avoid long periods\nof loud music with earphones on.",
  "Sound therapy is great, but not at the\ncost of hearing health.\nTime for a quick break?",
];

final message = (reminders..shuffle()).first;

void startHearingReminder(BuildContext context) {
  _hearingReminderTimer?.cancel();

  InternetConnection().onStatusChange.listen((status) {
    if (status == InternetStatus.connected) {
      _hearingReminderTimer = Timer.periodic(Duration(minutes: 45), (timer) {
        Get.showSnackbar(
          GetSnackBar(
            titleText: Center(
              child: Text(
                'Reminder',
                style: lexanGiga(
                  color: kwhite,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            messageText: Center(
              child: Text(
                message,
                textAlign: TextAlign.center,
                style: inter(
                  color: kwhite,
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            snackPosition: SnackPosition.BOTTOM,

            margin: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: kMqHeight(context) * 0.07,
            ),
            borderRadius: 18,
            duration: Duration(seconds: 6),
            snackStyle: SnackStyle.FLOATING,
            backgroundGradient: LinearGradient(
              colors: [kPrimaryBlue, kblack, kPrimaryPurple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        );
      });
    }
  });
}
