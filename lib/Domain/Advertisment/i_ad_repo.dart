import 'package:google_mobile_ads/google_mobile_ads.dart';

abstract class IAdvertisementRepo {
  Future<BannerAd?> showBannerAd();
  Future<void> showInterstratitialad();
  Future<void> showAppOpenAd();
}
