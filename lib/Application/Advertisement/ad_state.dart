part of 'ad_bloc.dart';

@freezed
class AdState with _$AdState {
  const factory AdState({BannerAd? ad}) = _AdState;
  factory AdState.initial() {
    return AdState();
  }
}
