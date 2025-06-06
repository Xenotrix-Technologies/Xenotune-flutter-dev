part of 'internet_check_bloc.dart';

@freezed
abstract class InternetCheckState with _$InternetCheckState {
  const factory InternetCheckState({required bool isTrue}) =
      _InternetCheckState;
  factory InternetCheckState.initial() {
    return InternetCheckState(isTrue: true);
  }
}
