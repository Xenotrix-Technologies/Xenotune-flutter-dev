part of 'music_control_bloc.dart';

@freezed
abstract class MusicControlState with _$MusicControlState {
  const factory MusicControlState({
    required bool isLoading,
    required bool isError,
    required String animation,

    required bool isPlay,
    required bool onTapPlay,
    required bool isPause,
    required bool isStoped,
    required List<double> heights,
  }) = _MusicControlState;
  factory MusicControlState.initial() {
    return MusicControlState(
      isLoading: false,
      isError: false,
      animation: 'assets/animations/earphone.riv',

      isStoped: true,
      heights: List.generate(25, (_) => 7.0),
      isPlay: false,
      isPause: true,
      onTapPlay: false,
    );
  }
}
