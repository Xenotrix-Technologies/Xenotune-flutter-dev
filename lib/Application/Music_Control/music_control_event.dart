part of 'music_control_bloc.dart';

@freezed
class MusicControlEvent with _$MusicControlEvent {
  const factory MusicControlEvent.play({
    required String url,
    required String animation,
  }) = Play;
  const factory MusicControlEvent.onTapPlay() = OnTapPlay;
  const factory MusicControlEvent.pause() = Pause;
  const factory MusicControlEvent.stop() = Stop;
  const factory MusicControlEvent.startWaveForm() = StartWaveForm;
  const factory MusicControlEvent.stopWaveForm() = StopWaveForm;
  const factory MusicControlEvent.waveForm() = WaveForm;
}
