import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:rive/rive.dart' show RiveAnimation;
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';

@LazySingleton()
class SnackBars {
  bool isConnectedToInternet = true;
  bool isSnackbarVisible = false;

  void netWorkCheck(context) {
    InternetConnection().onStatusChange.listen((status) {
      if (status == InternetStatus.disconnected && isConnectedToInternet) {
        isConnectedToInternet = false;
        showSnackBar(context);
      } else if (status == InternetStatus.connected && !isConnectedToInternet) {
        isConnectedToInternet = true;
        hideSnackbar();
      }

      isConnectedToInternet = status != InternetStatus.disconnected;
    });
  }

  void showSnackBar(BuildContext context) {
    if (!isSnackbarVisible) {
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
                  'Dissconnected',
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
                  'Slow or No internet connection\nplease check you internet settings',
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
          duration: Duration(hours: 1),
          snackStyle: SnackStyle.FLOATING,
          backgroundGradient: LinearGradient(
            colors: [kPrimaryPurple, kblack, kPrimaryBlue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      );
      isSnackbarVisible = true;
    }
  }

  void hideSnackbar() {
    Get.closeAllSnackbars();
    isSnackbarVisible = false;
  }
}
