part of 'subscription_bloc.dart';

@freezed
class SubscriptionEvent with _$SubscriptionEvent {
  const factory SubscriptionEvent.onSubscriptionEvent() = OnSubscriptionEvent;
  const factory SubscriptionEvent.onPurchasePackage({
    required Package package,
  }) = OnPurchasePackage;
}
