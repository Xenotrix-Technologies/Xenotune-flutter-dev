import 'package:purchases_flutter/purchases_flutter.dart';

abstract class ISubscriptionRepo {
  Future<void> init();
  Future<List<Offering>> fetchOfferrs();
  Future<bool> purchasePackage(Package package);
}
