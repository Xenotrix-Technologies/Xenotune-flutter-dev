import 'package:google_mobile_ads/google_mobile_ads.dart';

abstract class IAdvertisementRepo {
  BannerAd? showBannerAd();
  void showInterstratitialad();
  Future<void> showAppOpenAd();
}
