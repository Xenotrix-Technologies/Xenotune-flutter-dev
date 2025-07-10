import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:xenotune_flutter_dev/Domain/Subscription/i_subscription_repo.dart';

part 'subscription_event.dart';
part 'subscription_state.dart';
part 'subscription_bloc.freezed.dart';

@injectable
class SubscriptionBloc extends Bloc<SubscriptionEvent, SubscriptionState> {
  final ISubscriptionRepo iSubscriptionRepo;
  SubscriptionBloc(this.iSubscriptionRepo)
    : super(SubscriptionState.initial()) {
    on<OnSubscriptionEvent>((event, emit) async {
      emit(state.copyWith(offerings: []));
      final offering = await iSubscriptionRepo.fetchOfferrs();

      emit(state.copyWith(offerings: offering));
    });
    on<OnPurchasePackage>((event, emit) async {
      emit(state.copyWith(purchasedSucces: false));
      final purchase = await iSubscriptionRepo.purchasePackage(event.package);
      if (purchase == true) {
        emit(state.copyWith(purchasedSucces: true));
      } else {
        emit(state.copyWith(purchasedSucces: false));
      }
    });
    on<OnCheckedOrPurchased>((event, emit) async {
      final days = await iSubscriptionRepo.checkPremiumDays();
      final isSubscribed = await iSubscriptionRepo.checkPremium();
      if (isSubscribed) {
        emit(state.copyWith(isAdActive: false, remainingDays: days));
      } else {
        emit(state.copyWith(isAdActive: true));
      }
    });
  }
}
