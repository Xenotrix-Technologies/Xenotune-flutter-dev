part of 'player_bloc.dart';

@freezed
abstract class PlayerState with _$PlayerState {
  const factory PlayerState({
    required bool isPause,
    required bool isStoped,

    required List<double> heights,
  }) = _PlayerState;
  factory PlayerState.initial() {
    return PlayerState(
      isPause: true,
      heights: List.generate(25, (_) => 7.0),
      isStoped: true,
    );
  }
}
