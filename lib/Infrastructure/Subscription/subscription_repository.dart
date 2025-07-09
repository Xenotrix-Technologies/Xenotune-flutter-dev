import 'package:injectable/injectable.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:xenotune_flutter_dev/Domain/Subscription/i_subscription_repo.dart';

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
  Future<bool> purchasePackage(Package package) async {
    try {
      await Purchases.purchasePackage(package);
      return true;
    } catch (e) {
      return false;
    }
  }
}
