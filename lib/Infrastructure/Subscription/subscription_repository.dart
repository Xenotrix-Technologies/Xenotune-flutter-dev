// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:rive/rive.dart' show RiveAnimation;
import 'package:url_launcher/url_launcher.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';
import 'package:xenotune_flutter_dev/Core/sized_box.dart';
import 'package:xenotune_flutter_dev/Domain/Subscription/i_subscription_repo.dart';
import 'package:xenotune_flutter_dev/Presentation/Loading/loading.dart';

@LazySingleton(as: ISubscriptionRepo)
class PurchaseApi implements ISubscriptionRepo {
  static const apiKey = 'goog_vHtBPOxhQovfxPIgWeEELWGRpia';
  @override
  Future<void> init() async {
    await Purchases.setLogLevel(LogLevel.debug);
    await Purchases.configure(PurchasesConfiguration(apiKey));
  }

  @override
  Future<List<Offering>> fetchOfferrs() async {
    try {
      final offering = await Purchases.getOfferings();
      final current = offering.current;
      return current == null ? [] : [current];
    } catch (e) {
      return [];
    }
  }

  @override
  Future<bool> purchasePackage(BuildContext context, Package package) async {
    try {
      await Purchases.purchasePackage(package);
      Get.showSnackbar(
        GetSnackBar(
          titleText: SizedBox(
            height: kMqHeight(context) * 0.15,
            width: double.infinity,
            child: Center(
              child: RiveAnimation.asset('assets/animations/success.riv'),
            ),
          ),
          messageText: Column(
            children: [
              kSizedBoxHeight10,
              Center(
                child: Text(
                  'Success',
                  style: lexanGiga(
                    color: kwhite,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              kSizedBoxHeight10,
            ],
          ),
          snackPosition: SnackPosition.TOP,

          margin: EdgeInsets.symmetric(
            horizontal: 12,

            vertical: kMqHeight(context) * 0.07,
          ),
          borderRadius: 18,
          duration: Duration(seconds: 2),
          snackStyle: SnackStyle.FLOATING,
          backgroundGradient: LinearGradient(
            colors: [kPrimaryPurple, kblack, kPrimaryBlue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      );
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (c) => LoadingScreen()),
        (s) => false,
      );
      return true;
    } catch (e) {
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
                  'Something is not right.',
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
          duration: Duration(seconds: 2),
          snackStyle: SnackStyle.FLOATING,
          backgroundGradient: LinearGradient(
            colors: [kPrimaryPurple, kblack, kPrimaryBlue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      );
      return false;
    }
  }

  @override
  Future<bool> checkPremium() async {
    final customerInfo = await Purchases.getCustomerInfo();
    final isSubscribed = customerInfo.entitlements.active.containsKey(
      'xeno plus',
    );
    log('premium is active: $isSubscribed');
    return isSubscribed;
  }

  @override
  Future<int> checkPremiumDays() async {
    final customerInfo = await Purchases.getCustomerInfo();
    final isSubscribed = customerInfo.entitlements.active.containsKey(
      'xeno plus',
    );
    final entitlement =
        customerInfo.entitlements.active['xeno plus']?.expirationDate;

    if (isSubscribed || entitlement != null) {
      final convertedEntitlement = DateTime.parse(entitlement!);
      final daysLeft =
          convertedEntitlement.difference(DateTime.now()).inMinutes;
      log('days remaining: $daysLeft');
      return daysLeft;
    }
    return 0;
  }

  @override
  Future<void> cancelSubscriptionThroughPlaystore() async {
    final packageName = 'com.xenotunefromx.app';
    final url =
        'https://play.google.com/store/account/subscriptions?package=$packageName';

    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch subscription page';
    }
  }
}
