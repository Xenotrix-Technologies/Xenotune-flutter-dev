import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import 'package:xenotune_flutter_dev/Infrastructure/Advertisement/advertisement__repository.dart';

Timer? _adTimer;

void startInterstitialAdTimer(BuildContext context) {
  _adTimer?.cancel();

  InternetConnection().onStatusChange.listen((status) {
    if (status == InternetStatus.connected) {
      _adTimer = Timer.periodic(Duration(minutes: 2), (timer) {
        AdvertismentFunctions().showInterstratitialad(context);
      });
    }
  });
}
