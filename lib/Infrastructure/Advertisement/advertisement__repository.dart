import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:injectable/injectable.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:rive/rive.dart' show RiveAnimation;
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';
import 'package:xenotune_flutter_dev/Domain/Advertisment/i_ad_repo.dart';

bool isAdActive = true;

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
  Future<void> showAppOpenAd() async {
    if (isAdActive) {
      final customerInfo = await Purchases.getCustomerInfo();
      final isSubscribed = customerInfo.entitlements.active.containsKey(
        'xeno plus',
      );
      if (!isSubscribed) {
        await AppOpenAd.load(
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
    }
  }

  @override
  Future<BannerAd?> showBannerAd() async {
    if (isAdActive) {
      final customerInfo = await Purchases.getCustomerInfo();
      final isSubscribed = customerInfo.entitlements.active.containsKey(
        'xeno plus',
      );
      if (!isSubscribed) {
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
      }
      return _bannerAd;
    }
    return _bannerAd;
  }

  @override
  Future<void> showInterstratitialad(context) async {
    if (isAdActive) {
      final customerInfo = await Purchases.getCustomerInfo();
      final isSubscribed = customerInfo.entitlements.active.containsKey(
        'xeno plus',
      );
      if (!isSubscribed) {
        InterstitialAd.load(
          adUnitId: AdHelper.interstatialAdUnitId,
          request: const AdRequest(),
          adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: (ad) {
              ad.fullScreenContentCallback = FullScreenContentCallback(
                onAdDismissedFullScreenContent: (ad) async {
                  ad.dispose();
                  Get.showSnackbar(
                    GetSnackBar(
                      titleText: SizedBox(
                        // ignore: use_build_context_synchronouslys
                        height: kMqHeight(context) * 0.15,
                        width: double.infinity,
                        child: Center(
                          child: RiveAnimation.asset(
                            'assets/animations/no_internet.riv',
                          ),
                        ),
                      ),
                      messageText: Column(
                        children: [
                          kSizedBoxHeight10,
                          Center(
                            child: Text(
                              'Remove ads now',
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
                              'Buy a subscription and enjoy music without ads',
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
                        // ignore: use_build_context_synchronously
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
  }
}
