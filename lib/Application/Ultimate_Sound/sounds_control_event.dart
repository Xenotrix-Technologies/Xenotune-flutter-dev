part of 'sounds_control_bloc.dart';

@freezed
class SoundsControlEvent with _$SoundsControlEvent {
  const factory SoundsControlEvent.onVolumeChange({
    required double volume,
    required String soundId,
  }) = OnVolumeChange;
  const factory SoundsControlEvent.onPaused() = OnPaused;
  const factory SoundsControlEvent.onTapMute({required String soundId}) =
      OnTapMute;
  const factory SoundsControlEvent.onPlayed({
    required String path,
    required String sID,
  }) = OnPlayed;
}
