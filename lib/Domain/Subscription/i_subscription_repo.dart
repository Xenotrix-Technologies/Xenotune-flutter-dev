import 'package:flutter/widgets.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

abstract class ISubscriptionRepo {
  Future<void> init();
  Future<List<Offering>> fetchOfferrs();
  Future<bool> purchasePackage(BuildContext context, Package package);
  Future<bool> checkPremium();
  Future<int> checkPremiumDays();
  Future<void> cancelSubscriptionThroughPlaystore();
}
