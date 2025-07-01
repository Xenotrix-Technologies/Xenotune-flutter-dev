import 'dart:async';
import 'dart:developer';
import 'dart:math' show Random;

import 'package:audio_service/audio_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:xenotune_flutter_dev/Domain/Audio/music_media_item.dart';
import 'package:xenotune_flutter_dev/Domain/Core/Dependency%20Injection/dependency_injection.dart';

part 'music_control_event.dart';
part 'music_control_state.dart';
part 'music_control_bloc.freezed.dart';

@injectable
class MusicControlBloc extends Bloc<MusicControlEvent, MusicControlState> {
  Timer? timerControl;

  final audioHandler = getit<AudioHandler>();
  final playlist = moodSongs;
  MusicControlBloc() : super(MusicControlState.initial()) {
    audioHandler.playbackState.listen((playBactState) {
      final isPlaying = playBactState.playing;
      final processingState = playBactState.processingState;

      final isBuffering =
          processingState == AudioProcessingState.loading ||
          processingState == AudioProcessingState.buffering;
      log('processing state : $processingState');
      add(IsPlayingOrPaused(isPlaying: isPlaying, isbuffering: isBuffering));
    });
    audioHandler.mediaItem.listen((mediaItem) {
      if (mediaItem != null) {
        final animation = mediaItem.extras?['animation'] as String? ?? '';
        final id = mediaItem.id;

        add(IsMusicChanged(animation: animation, id: id));
      }
    });
    on<IsPlayingOrPaused>((event, emit) async {
      final isPaused = !event.isPlaying && !event.isbuffering;
      emit(
        state.copyWith(
          isPlay: event.isPlaying && !event.isbuffering,
          isPause: isPaused,
          isLoading: event.isbuffering,
          isStoped: false,
          // onTapPlay: event.isPlaying && !event.isbuffering,
          isError: false,
          heights: isPaused ? List.generate(25, (_) => 7.0) : state.heights,
        ),
      );
    });
    on<IsMusicChanged>((event, emit) {
      emit(state.copyWith(animation: event.animation));
    });
    on<Load>((event, emit) async {
      final mediaItems = moodSongs;
      await audioHandler.addQueueItems(mediaItems);
    });
    on<Play>((event, emit) async {
      final mood = event.mood;
      final queueItems = audioHandler.queue.value;
      final index = queueItems.indexWhere((item) => item.id == mood);
      final url = queueItems[index].extras!['url'] as String;
      final animationPath = queueItems[index].extras!['animation'] as String;
      await audioHandler.stop();

      if (index != -1) {
        await audioHandler.skipToQueueItem(index);

        log(url);

        await audioHandler.play();
        emit(
          state.copyWith(
            isLoading: false,
            isPause: false,
            isError: false,
            isStoped: false,
            onTapPlay: false,
            isPlay: true,
            animation: animationPath,
          ),
        );
      }
    });
    on<Pause>((event, emit) async {
      emit(
        state.copyWith(
          // isPause: true,
          // onTapPlay: false,
          // isPlay: false,
          // isLoading: false,
          // isStoped: false,
          // isError: false,
          heights: List.generate(25, (_) => 7.0),
        ),
      );
      await audioHandler.pause();
    });
    on<OnTapPlay>((event, emit) async {
      // emit(
      //   state.copyWith(
      //     isLoading: false,
      //     isPause: false,
      //     isError: false,
      //     isStoped: false,
      //     isPlay: true,
      //     onTapPlay: true,
      //   ),
      // );
      await audioHandler.play();
    });
    on<Stop>((event, emit) async {
      await audioHandler.stop();
      emit(
        state.copyWith(
          isStoped: true,
          isPause: true,
          isPlay: false,
          onTapPlay: false,
          heights: List.generate(25, (_) => 7.0),
        ),
      );
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
