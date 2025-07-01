part of 'music_control_bloc.dart';

@freezed
class MusicControlEvent with _$MusicControlEvent {
  const factory MusicControlEvent.play({required String mood}) = Play;
  const factory MusicControlEvent.load() = Load;
  const factory MusicControlEvent.onTapPlay() = OnTapPlay;
  const factory MusicControlEvent.pause() = Pause;
  const factory MusicControlEvent.stop() = Stop;
  const factory MusicControlEvent.startWaveForm() = StartWaveForm;
  const factory MusicControlEvent.stopWaveForm() = StopWaveForm;
  const factory MusicControlEvent.waveForm() = WaveForm;
  const factory MusicControlEvent.isPlayingOrPaused({
    required bool isPlaying,
    required bool isbuffering,
  }) = IsPlayingOrPaused;
  const factory MusicControlEvent.isMusicChanged({
    required String animation,
    required String id,
  }) = IsMusicChanged;
}
