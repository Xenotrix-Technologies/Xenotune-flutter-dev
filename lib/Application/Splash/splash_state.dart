part of 'splash_bloc.dart';

@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState({required bool loading, required bool loaded}) =
      _SplashState;
  factory SplashState.initial() {
    return SplashState(loading: false, loaded: false);
  }
}
