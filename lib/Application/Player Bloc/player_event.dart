part of 'player_bloc.dart';

@freezed
class PlayerEvent with _$PlayerEvent {
  const factory PlayerEvent.play() = Play;
  const factory PlayerEvent.pause() = Pause;
  const factory PlayerEvent.stop() = Stop;
  const factory PlayerEvent.startWaveForm() = StartWaveForm;
  const factory PlayerEvent.stopWaveForm() = StopWaveForm;
  const factory PlayerEvent.waveForm() = WaveForm;
}
