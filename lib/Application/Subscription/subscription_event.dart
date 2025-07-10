part of 'subscription_bloc.dart';

@freezed
class SubscriptionEvent with _$SubscriptionEvent {
  const factory SubscriptionEvent.onSubscriptionEvent() = OnSubscriptionEvent;
  const factory SubscriptionEvent.onPurchasePackage({
    required BuildContext context,
    required Package package,
  }) = OnPurchasePackage;
  const factory SubscriptionEvent.onCheckedOrPurchased() = OnCheckedOrPurchased;
}
