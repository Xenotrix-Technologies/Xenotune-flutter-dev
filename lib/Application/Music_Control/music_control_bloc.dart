import 'dart:async';
import 'dart:developer';
import 'dart:math' show Random;

import 'package:audio_service/audio_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:xenotune_flutter_dev/Domain/Audio/music_media_item.dart';
import 'package:xenotune_flutter_dev/Domain/Core/Dependency%20Injection/dependency_injection.dart';
import 'package:xenotune_flutter_dev/Domain/Http%20req/i_http_repo.dart';

part 'music_control_event.dart';
part 'music_control_state.dart';
part 'music_control_bloc.freezed.dart';

@injectable
class MusicControlBloc extends Bloc<MusicControlEvent, MusicControlState> {
  Timer? timerControl;

  final audioHandler = getit<AudioHandler>();
  StreamSubscription<PlaybackState>? _playbackSubscription;

  final playlist = moodSongs;
  final IHttpRepo iHttpRepo;

  MusicControlBloc(this.iHttpRepo) : super(MusicControlState.initial()) {
    audioHandler.playbackState.listen((playBactState) {
      final isPlaying = playBactState.playing;
      final processingState = playBactState.processingState;

      final isBuffering =
          processingState == AudioProcessingState.loading ||
          processingState == AudioProcessingState.buffering;
      log('processing state : $processingState');
      add(IsPlayingOrPaused(isPlaying: isPlaying, isbuffering: isBuffering));
    });
    // audioHandler.mediaItem.listen((mediaItem) {
    //   if (mediaItem != null) {
    //     final animation = mediaItem.extras?['animation'] as String? ?? '';
    //     final id = mediaItem.id;

    //     add(IsMusicChanged(animation: animation, id: id));
    //   }
    // });
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
    // on<IsMusicChanged>((event, emit) {
    //   emit(state.copyWith(animation: event.animation));
    // });
    // on<Load>((event, emit) async {
    //   final mediaItems =  playlist;
    //   await audioHandler.addQueueItems(mediaItems);
    // });
    on<Play>((event, emit) async {
      final mood = event.mood;

      final result = await iHttpRepo.fetchMusic(mood);

      result.fold(
        (f) => emit(
          state.copyWith(
            isLoading: false,
            isPause: true,
            isError: true,
            isStoped: false,
            onTapPlay: false,
            isPlay: false,
            animation: event.animation,
          ),
        ),
        (s) async {
          final MediaItem item = MediaItem(
            id: mood,
            title: '$mood Music',
            extras: {'url': s, 'animation': event.animation},
          );

          log('fetched : $s');

          emit(
            state.copyWith(
              isLoading: false,
              isPause: false,
              isError: false,
              isStoped: false,
              onTapPlay: false,
              isPlay: true,
              animation: event.animation,
            ),
          );
          await audioHandler.addQueueItem(item);
          //  await audioHandler.playMediaItem(item);
          await audioHandler.play();

          // Future<void> scheduleNextFetch() async {
          //   await Future.delayed(Duration(seconds: 15));
          //   currentFile = currentFile == 'M1.mp3' ? 'M2.mp3' : 'M1.mp3';
          //   log('Now fetching: $currentFile');
          //   final r2 = await iHttpRepo.fetcAgainhMusic(currentFile);

          //   r2.fold((f) => log('Error fetching next music: $f'), (su) async {
          //     log('Fetched next music: $su');
          //     final MediaItem nextItem = MediaItem(
          //       id: mood,
          //       title: '$mood Music',
          //       extras: {'url': su, 'animation': event.animation},
          //     );
          //     await audioHandler.addQueueItem(nextItem);
          //     scheduleNextFetch();
          //   });
          // }

          // scheduleNextFetch();
        },
      );
    });
    // on<Play>((event, emit) async {
    //   final mood = event.mood;
    //   final result = await iHttpRepo.fetchMusic(mood);
    //   result.fold(
    //     (f) => emit(
    //       state.copyWith(
    //         isLoading: false,
    //         isPause: true,
    //         isError: true,
    //         isStoped: false,
    //         onTapPlay: false,
    //         isPlay: false,
    //         animation: event.animation,
    //       ),
    //     ),
    //     (s) async {
    //       final MediaItem item = MediaItem(
    //         id: mood,
    //         title: '$mood Music',
    //         extras: {'url': s, 'animation': event.animation},
    //       );
    //       await audioHandler.playMediaItem(item);
    //       audioHandler.playbackState.listen((playBactState) async {
    //         final processingState = playBactState.processingState;

    //         final isCompleted =
    //             processingState == AudioProcessingState.completed;
    //         if (isCompleted) {
    //           final result2 = await iHttpRepo.fetcAgainhMusic();
    //           result2.fold(
    //             (f) => emit(
    //               state.copyWith(
    //                 isLoading: false,
    //                 isPause: true,
    //                 isError: true,
    //                 isStoped: false,
    //                 onTapPlay: false,
    //                 isPlay: false,
    //                 animation: event.animation,
    //               ),
    //             ),
    //             (s) async {
    //               log('called again');
    //               final MediaItem item = MediaItem(
    //                 id: mood,
    //                 title: '$mood Music',
    //                 extras: {'url': s, 'animation': event.animation},
    //               );
    //               await audioHandler.playMediaItem(item);
    //             },
    //           );
    //         }
    //       });
    //     },
    //   );
    //   // final queueItems = audioHandler.queue.value;
    //   // final index = queueItems.indexWhere((item) => item.id == mood);
    //   // final url = queueItems[index].extras!['url'] as String;
    //   // final animationPath = queueItems[index].extras!['animation'] as String;

    //   // await audioHandler.play();
    //   emit(
    //     state.copyWith(
    //       isLoading: false,
    //       isPause: false,
    //       isError: false,
    //       isStoped: false,
    //       onTapPlay: false,
    //       isPlay: true,
    //       animation: event.animation,
    //     ),
    //   );

    //   // if (index != -1) {
    //   // await audioHandler.skipToQueueItem(index);

    //   // log(url);

    //   // }
    // });
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
      // final result = await iHttpRepo.pauseMusic();
      // result.fold(
      //   (f) {
      //     log('Pause error: $f');
      //   },
      //   (success) async {
      //     emit(
      //       state.copyWith(
      //         // isPause: true,
      //         // onTapPlay: false,
      //         // isPlay: false,
      //         // isLoading: false,
      //         // isStoped: false,
      //         // isError: false,
      //         heights: List.generate(25, (_) => 7.0),
      //       ),
      //     );
      //     log('Music paused: $success');
      //     await audioHandler.pause();
      //   },
      // );
    });
    on<OnTapPlay>((event, emit) async {
      await audioHandler.play();
      // final result = await iHttpRepo.resumeMusic();
      // result.fold(
      //   (f) {
      //     log('Resume error: $f');
      //   },
      //   (success) async {
      //     log('Music resumed: $success');

      //     await audioHandler.play();
      //   },
      // );
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
    });
    on<Stop>((event, emit) async {
      final result = await iHttpRepo.stopMusic();
      result.fold(
        (f) {
          log('Stop error: $f');
        },
        (success) async {
          emit(
            state.copyWith(
              isStoped: true,
              isPause: true,
              isPlay: false,
              onTapPlay: false,
              heights: List.generate(25, (_) => 7.0),
            ),
          );
          await audioHandler.stop();
          log('Music stopped: $success');
        },
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
    _playbackSubscription?.cancel();
    return super.close();
  }
}
