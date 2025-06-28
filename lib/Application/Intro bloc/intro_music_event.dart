part of 'intro_music_bloc.dart';

@freezed
class IntroMusicEvent with _$IntroMusicEvent {
  const factory IntroMusicEvent.play() = Play;
  const factory IntroMusicEvent.pause() = Pause;
}
