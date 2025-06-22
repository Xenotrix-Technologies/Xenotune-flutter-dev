import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:just_audio/just_audio.dart';

part 'sounds_control_event.dart';
part 'sounds_control_state.dart';
part 'sounds_control_bloc.freezed.dart';

@injectable
class SoundsControlBloc extends Bloc<SoundsControlEvent, SoundsControlState> {
  final Map<String, AudioPlayer> _players = {};
  SoundsControlBloc() : super(SoundsControlState.initial()) {
    on<OnPlayed>((event, emit) async {
      final player = _players.putIfAbsent(event.sID, () => AudioPlayer());

      if (player.playerState.processingState == ProcessingState.idle) {
        await player.setAsset(event.path);
        await player.setLoopMode(LoopMode.one);
      }

      final volume = state.volumes[event.sID] ?? 0;
      await player.setVolume(volume);
      await player.play();

      final updatedStatus = Map<String, bool>.from(state.playingStatus);
      updatedStatus[event.sID] = true;

      emit(state.copyWith(playingStatus: updatedStatus));
      // if (soundPlayer.playerState.processingState == ProcessingState.idle) {
      //   await soundPlayer.setAsset(event.path);
      //   await soundPlayer.setLoopMode(LoopMode.one);
      // }
      // emit(state.copyWith(isPlaying: true, isPaused: false));
      // await soundPlayer.setVolume(state.volumeValue);
      // await soundPlayer.play();
    });
    on<OnPaused>((event, emit) async {
      final updatedStatus = Map<String, bool>.from(state.playingStatus);
      final updatedVolumes = Map<String, double>.from(state.volumes);

      for (final entry in _players.entries) {
        final soundId = entry.key;
        final player = entry.value;

        await player.pause();
        await player.setVolume(0.0);

        updatedStatus[soundId] = false;
        updatedVolumes[soundId] = 0.0;
      }

      emit(
        state.copyWith(playingStatus: updatedStatus, volumes: updatedVolumes),
      );

      // emit(state.copyWith(isPaused: true, isPlaying: false, volumeValue: 0));
      // await soundPlayer.pause();
    });
    on<OnTapMute>((event, emit) async {
      final player = _players[event.soundId];
      if (player != null) await player.setVolume(0.0);

      final updatedVolumes = Map<String, double>.from(state.volumes);
      updatedVolumes[event.soundId] = 0.0;

      emit(state.copyWith(volumes: updatedVolumes));
      // emit(state.copyWith(isMute: true));
    });
    on<OnVolumeChange>((event, emit) async {
      final player = _players[event.soundId];
      if (player != null) await player.setVolume(event.volume);

      final updatedVolumes = Map<String, double>.from(state.volumes);
      updatedVolumes[event.soundId] = event.volume;

      emit(state.copyWith(volumes: updatedVolumes));
      // emit(state.copyWith(volumeValue: event.volume));
      // await soundPlayer.setVolume(event.volume);
    });
  }
}
