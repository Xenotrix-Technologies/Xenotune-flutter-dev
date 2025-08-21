import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart' show RiveAnimation;
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';

showFailedSnackBar(BuildContext context) {
  Get.showSnackbar(
    GetSnackBar(
      titleText: SizedBox(
        height: kMqHeight(context) * 0.15,
        width: double.infinity,
        child: Center(
          child: RiveAnimation.asset('assets/animations/no_internet.riv'),
        ),
      ),
      messageText: Column(
        children: [
          kSizedBoxHeight10,
          Center(
            child: Text(
              'Failed',
              style: lexanGiga(
                color: kwhite,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          kSizedBoxHeight10,
          Center(
            child: Text(
              'failed to generate/fetch music from server.',
              textAlign: TextAlign.center,
              style: inter(
                color: kwhite,
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      snackPosition: SnackPosition.TOP,

      margin: EdgeInsets.symmetric(
        horizontal: 12,

        vertical: kMqHeight(context) * 0.07,
      ),
      borderRadius: 18,
      duration: Duration(seconds: 5),
      snackStyle: SnackStyle.FLOATING,
      backgroundGradient: LinearGradient(
        colors: [kPrimaryPurple, kblack, kPrimaryBlue],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
  );
}

showGeneratingSnackbar(BuildContext context) {
  Get.showSnackbar(
    GetSnackBar(
      titleText: SizedBox(
        height: kMqHeight(context) * 0.15,
        width: double.infinity,
        child: Center(
          child: RiveAnimation.asset('assets/animations/no_internet.riv'),
        ),
      ),
      messageText: Column(
        children: [
          kSizedBoxHeight10,
          Center(
            child: Text(
              'Generating',
              style: lexanGiga(
                color: kwhite,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          kSizedBoxHeight10,
          Center(
            child: Text(
              'AI is currently generating your music, please wait.',
              textAlign: TextAlign.center,
              style: inter(
                color: kwhite,
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      snackPosition: SnackPosition.TOP,

      margin: EdgeInsets.symmetric(
        horizontal: 12,

        vertical: kMqHeight(context) * 0.07,
      ),
      borderRadius: 18,
      duration: Duration(seconds: 60),
      snackStyle: SnackStyle.FLOATING,
      backgroundGradient: LinearGradient(
        colors: [kPrimaryPurple, kblack, kPrimaryBlue],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
  );
}

hideCurrentSnackBar() {
  if (Get.isSnackbarOpen) {
    Get.closeCurrentSnackbar();
  }
}
