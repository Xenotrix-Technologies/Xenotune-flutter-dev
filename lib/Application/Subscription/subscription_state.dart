part of 'subscription_bloc.dart';

@freezed
class SubscriptionState with _$SubscriptionState {
  const factory SubscriptionState({
    required List<Offering> offerings,
    required bool purchasedSucces,
    required bool isAdActive,
    required int remainingDays,
  }) = _SubscriptionState;
  factory SubscriptionState.initial() {
    return SubscriptionState(
      offerings: [],
      purchasedSucces: false,
      isAdActive: true,
      remainingDays: 0,
    );
  }
}
