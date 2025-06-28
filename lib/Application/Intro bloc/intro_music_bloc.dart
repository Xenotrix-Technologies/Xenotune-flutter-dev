import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:just_audio/just_audio.dart';

part 'intro_music_event.dart';
part 'intro_music_state.dart';
part 'intro_music_bloc.freezed.dart';

@injectable
class IntroMusicBloc extends Bloc<IntroMusicEvent, IntroMusicState> {
  final player = AudioPlayer();
  IntroMusicBloc() : super(_Initial()) {
    on<Play>((event, emit) async {
      if (player.playerState.processingState == ProcessingState.idle) {
        await player.setAsset('assets/sounds/intro.mp3');
        await player.setLoopMode(LoopMode.one);
      }

      await player.setVolume(0.7);
      await player.play();
    });
    on<Pause>((event, emit) async {
      await player.stop();
    });
  }
}
