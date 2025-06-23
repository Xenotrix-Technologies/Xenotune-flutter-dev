import 'dart:async';
import 'dart:developer';
import 'dart:math' show Random;

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:just_audio/just_audio.dart';

part 'music_control_event.dart';
part 'music_control_state.dart';
part 'music_control_bloc.freezed.dart';

@injectable
class MusicControlBloc extends Bloc<MusicControlEvent, MusicControlState> {
  Timer? timerControl;
  final AudioPlayer _audioPlayer = AudioPlayer();
  MusicControlBloc() : super(MusicControlState.initial()) {
    on<Play>((event, emit) async {
      await _audioPlayer.stop();
      emit(
        state.copyWith(
          isLoading: true,
          isError: false,
          isPause: true,
          isStoped: true,
          isPlay: false,
          onTapPlay: false,
        ),
      );
      try {
        if (_audioPlayer.playerState.processingState == ProcessingState.idle) {
          await _audioPlayer.setAudioSource(event.source);
          log(event.source.toString());
          await _audioPlayer.setLoopMode(LoopMode.one);
          emit(state.copyWith(animation: event.animation));
        } else if (_audioPlayer.playerState.processingState ==
                ProcessingState.buffering ||
            _audioPlayer.playerState.processingState ==
                ProcessingState.loading) {
          emit(
            state.copyWith(
              isLoading: true,
              isPause: false,
              isStoped: false,
              isPlay: false,
              onTapPlay: false,
            ),
          );
        }

        emit(
          state.copyWith(
            isLoading: false,
            isPause: false,
            isError: false,
            isStoped: false,
            isPlay: true,
            onTapPlay: true,
          ),
        );

        await _audioPlayer.play();
      } catch (e) {
        emit(
          state.copyWith(
            isError: true,
            isLoading: false,
            isPlay: false,
            isPause: false,
            isStoped: false,
            onTapPlay: false,
          ),
        );
      }
    });
    on<Pause>((event, emit) async {
      await _audioPlayer.pause();
      emit(
        state.copyWith(
          isPause: true,
          onTapPlay: false,
          isPlay: false,
          isLoading: false,
          isStoped: false,
          isError: false,
          heights: List.generate(25, (_) => 7.0),
        ),
      );
    });
    on<OnTapPlay>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: false,
          isPause: false,
          isError: false,
          isStoped: false,
          isPlay: true,
          onTapPlay: true,
        ),
      );
      await _audioPlayer.play();
    });
    on<Stop>((event, emit) async {
      emit(
        state.copyWith(
          isStoped: true,
          isPause: true,
          isPlay: false,
          onTapPlay: false,
          heights: List.generate(25, (_) => 7.0),
        ),
      );
      await _audioPlayer.stop();
    });
    on<StartWaveForm>((event, emit) {
      timerControl?.cancel();
      timerControl = Timer.periodic(Duration(milliseconds: 100), (_) {
        add(WaveForm());
      });
    });
    on<StopWaveForm>((event, emit) {
      timerControl?.cancel();
      timerControl = null;
    });
    on<WaveForm>((event, emit) {
      emit(
        state.copyWith(
          heights: List.generate(25, (_) => Random().nextDouble() * 60 + 10),
        ),
      );
    });
  }
  @override
  Future<void> close() {
    timerControl?.cancel();
    return super.close();
  }
}
