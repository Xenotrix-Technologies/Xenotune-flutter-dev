import 'dart:io';
import 'dart:nativewrappers/_internal/vm/lib/developer.dart';

import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:injectable/injectable.dart';
import 'package:xenotune_flutter_dev/Domain/Advertisment/i_ad_repo.dart';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      // return 'ca-app-pub-3811809688597776/3103951079';
      return 'ca-app-pub-3940256099942544/6300978111'; // test ad id
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get interstatialAdUnitId {
    if (Platform.isAndroid) {
      //return 'ca-app-pub-3811809688597776/3156207378';
      return 'ca-app-pub-3940256099942544/1033173712'; // test ad is
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get appOpensAdUnitId {
    if (Platform.isAndroid) {
      // return 'ca-app-pub-3811809688597776/5773781796';
      return 'ca-app-pub-3940256099942544/9257395921'; // test ad id
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }
}

@LazySingleton(as: IAdvertisementRepo)
class AdvertismentFunctions implements IAdvertisementRepo {
  BannerAd? _bannerAd;
  InterstitialAd? _interstitialAd;
  AppOpenAd? _appOpenAd;
  @override
  void showAppOpenAd() {
    AppOpenAd.load(
      adUnitId: AdHelper.appOpensAdUnitId,
      request: const AdRequest(),
      adLoadCallback: AppOpenAdLoadCallback(
        onAdLoaded: (ad) {
          _appOpenAd = ad;
          _appOpenAd!.show();
        },
        onAdFailedToLoad: (error) {
          _appOpenAd!.dispose();
          log('failed to show app open ad: $error');
        },
      ),
    );
  }

  @override
  BannerAd? showBannerAd() {
    BannerAd(
      size: AdSize.banner,
      adUnitId: AdHelper.bannerAdUnitId,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          _bannerAd = ad as BannerAd;
        },
        onAdFailedToLoad: (ad, error) {
          log('Failed to load BannerAd: $error');
          ad.dispose();
        },
      ),
      request: const AdRequest(),
    );
    return _bannerAd;
  }

  @override
  void showInterstratitialad() {
    InterstitialAd.load(
      adUnitId: AdHelper.interstatialAdUnitId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          ad.fullScreenContentCallback = FullScreenContentCallback(
            onAdDismissedFullScreenContent: (ad) async {
              ad.dispose();
            },
            onAdFailedToShowFullScreenContent: (ad, error) {
              ad.dispose();
            },
          );
          _interstitialAd = ad;
          _interstitialAd?.show();
        },
        onAdFailedToLoad: (error) {
          log('InterstitialAd failed to load: $error');
        },
      ),
    );
  }
}
